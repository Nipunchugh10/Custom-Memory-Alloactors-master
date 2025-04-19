#ifndef MEMORYALLOCATOR_RBTREE_H
#define MEMORYALLOCATOR_RBTREE_H

#include <functional>  // for std::less

enum TreeColor {
    RED,
    BLACK,
};

template<typename T>
struct Node {
    T data;
    TreeColor color;
    Node* parent;
    Node* left;
    Node* right;
};

template<typename T, typename Compare = std::less<T>>
class RBTree {
public:
    using NodeType = Node<T>;
    RBTree() = default;
    ~RBTree() = default;

    // Insert
    void InsertNode(NodeType* node);

    // Remove
    void RemoveNode(NodeType* node);

    // Find
    template <typename CondFunc>
    NodeType* FindNode(CondFunc&& func);

    // Get min element
    NodeType* minElement(NodeType* node);

    // Get max element
    NodeType* maxElement(NodeType* node);

private:
    Compare comp;

    NodeType* GetGrandParent(NodeType* node);
    void LeftRotate(NodeType* node);
    void RightRotate(NodeType* node);
    void InsertFix(NodeType* node);
    void Transplant(NodeType* nodeA, NodeType* nodeB);
    void RemoveFix(NodeType* node);

public:
    NodeType* root{nullptr};
};

template<typename T, typename Compare>
void RBTree<T, Compare>::InsertNode(NodeType* node) {
    auto* currentNode = root;
    NodeType* parentNode = nullptr;

    while (currentNode != nullptr) {
        parentNode = currentNode;
        if (comp(node->data, currentNode->data)) {
            currentNode = currentNode->left;
        } else {
            currentNode = currentNode->right;
        }
    }

    node->parent = parentNode;

    if (parentNode == nullptr) {
        root = node;
    } else if (comp(node->data, parentNode->data)) {
        parentNode->left = node;
    } else {
        parentNode->right = node;
    }

    node->left = nullptr;
    node->right = nullptr;
    node->color = RED;

    InsertFix(node);
}

template<typename T, typename Compare>
void RBTree<T, Compare>::RemoveNode(NodeType* node) {
    auto* removedNode = node;
    auto removeNodeOldColor = node->color;
    NodeType* nodeToFix = nullptr;

    if (node->left == nullptr) {
        nodeToFix = node->right;
        Transplant(node, node->right);
    } else if (node->right == nullptr) {
        nodeToFix = node->left;
        Transplant(node, node->left);
    } else {
        removedNode = minElement(node->right);
        removeNodeOldColor = removedNode->color;
        nodeToFix = removedNode->right;

        if (removedNode != node->right) {
            Transplant(removedNode, removedNode->right);
            removedNode->right = node->right;
            removedNode->right->parent = removedNode;
        } else if (nodeToFix != nullptr) {
            nodeToFix->parent = removedNode;
        }

        Transplant(node, removedNode);
        removedNode->left = node->left;
        removedNode->left->parent = removedNode;
        removedNode->color = node->color;
    }

    if (removeNodeOldColor == BLACK && nodeToFix != nullptr) {
        RemoveFix(nodeToFix);
    }
}

template<typename T, typename Compare>
template<typename CondFunc>
typename RBTree<T, Compare>::NodeType* RBTree<T, Compare>::FindNode(CondFunc&& func) {
    auto* currentNode = root;
    while (currentNode != nullptr) {
        int ordering = func(currentNode);

        if (ordering < 0) {
            currentNode = currentNode->left;
        } else if (ordering > 0) {
            currentNode = currentNode->right;
        } else {
            return currentNode;
        }
    }
    return nullptr;
}

template<typename T, typename Compare>
typename RBTree<T, Compare>::NodeType* RBTree<T, Compare>::minElement(NodeType* node) {
    auto* currentNode = node;
    while (currentNode && currentNode->left != nullptr) {
        currentNode = currentNode->left;
    }
    return currentNode;
}

template<typename T, typename Compare>
typename RBTree<T, Compare>::NodeType* RBTree<T, Compare>::maxElement(NodeType* node) {
    auto* currentNode = node;
    while (currentNode && currentNode->right != nullptr) {
        currentNode = currentNode->right;
    }
    return currentNode;
}

template<typename T, typename Compare>
typename RBTree<T, Compare>::NodeType* RBTree<T, Compare>::GetGrandParent(NodeType* node) {
    if (node != nullptr && node->parent != nullptr) {
        return node->parent->parent;
    }
    return nullptr;
}

template<typename T, typename Compare>
void RBTree<T, Compare>::LeftRotate(NodeType* node) {
    auto* y = node->right;
    node->right = y->left;
    if (y->left != nullptr) {
        y->left->parent = node;
    }
    y->parent = node->parent;
    if (node->parent == nullptr) {
        root = y;
    } else if (node == node->parent->left) {
        node->parent->left = y;
    } else {
        node->parent->right = y;
    }
    y->left = node;
    node->parent = y;
}

template<typename T, typename Compare>
void RBTree<T, Compare>::RightRotate(NodeType* node) {
    auto* y = node->left;
    node->left = y->right;
    if (y->right != nullptr) {
        y->right->parent = node;
    }
    y->parent = node->parent;
    if (node->parent == nullptr) {
        root = y;
    } else if (node == node->parent->right) {
        node->parent->right = y;
    } else {
        node->parent->left = y;
    }
    y->right = node;
    node->parent = y;
}

template<typename T, typename Compare>
void RBTree<T, Compare>::InsertFix(NodeType* node) {
    while (node->parent && node->parent->color == RED) {
        if (node->parent == GetGrandParent(node)->left) {
            auto* uncle = GetGrandParent(node)->right;
            if (uncle && uncle->color == RED) {
                node->parent->color = BLACK;
                uncle->color = BLACK;
                GetGrandParent(node)->color = RED;
                node = GetGrandParent(node);
            } else {
                if (node == node->parent->right) {
                    node = node->parent;
                    LeftRotate(node);
                }
                node->parent->color = BLACK;
                GetGrandParent(node)->color = RED;
                RightRotate(GetGrandParent(node));
            }
        } else {
            auto* uncle = GetGrandParent(node)->left;
            if (uncle && uncle->color == RED) {
                node->parent->color = BLACK;
                uncle->color = BLACK;
                GetGrandParent(node)->color = RED;
                node = GetGrandParent(node);
            } else {
                if (node == node->parent->left) {
                    node = node->parent;
                    RightRotate(node);
                }
                node->parent->color = BLACK;
                GetGrandParent(node)->color = RED;
                LeftRotate(GetGrandParent(node));
            }
        }
    }
    root->color = BLACK;
}

template<typename T, typename Compare>
void RBTree<T, Compare>::Transplant(NodeType* u, NodeType* v) {
    if (u->parent == nullptr) {
        root = v;
    } else if (u == u->parent->left) {
        u->parent->left = v;
    } else {
        u->parent->right = v;
    }
    if (v != nullptr) {
        v->parent = u->parent;
    }
}

template<typename T, typename Compare>
void RBTree<T, Compare>::RemoveFix(NodeType* node) {
    while (node != root && node->color == BLACK) {
        if (node == node->parent->left) {
            auto* w = node->parent->right;
            if (w->color == RED) {
                w->color = BLACK;
                node->parent->color = RED;
                LeftRotate(node->parent);
                w = node->parent->right;
            }
            if ((!w->left || w->left->color == BLACK) &&
                (!w->right || w->right->color == BLACK)) {
                w->color = RED;
                node = node->parent;
            } else {
                if (!w->right || w->right->color == BLACK) {
                    if (w->left) w->left->color = BLACK;
                    w->color = RED;
                    RightRotate(w);
                    w = node->parent->right;
                }
                w->color = node->parent->color;
                node->parent->color = BLACK;
                if (w->right) w->right->color = BLACK;
                LeftRotate(node->parent);
                node = root;
            }
        } else {
            auto* w = node->parent->left;
            if (w->color == RED) {
                w->color = BLACK;
                node->parent->color = RED;
                RightRotate(node->parent);
                w = node->parent->left;
            }
            if ((!w->right || w->right->color == BLACK) &&
                (!w->left || w->left->color == BLACK)) {
                w->color = RED;
                node = node->parent;
            } else {
                if (!w->left || w->left->color == BLACK) {
                    if (w->right) w->right->color = BLACK;
                    w->color = RED;
                    LeftRotate(w);
                    w = node->parent->left;
                }
                w->color = node->parent->color;
                node->parent->color = BLACK;
                if (w->left) w->left->color = BLACK;
                RightRotate(node->parent);
                node = root;
            }
        }
    }
    node->color = BLACK;
}

#endif // MEMORYALLOCATOR_RBTREE_H
