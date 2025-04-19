cmake -B build -G "MinGW Makefiles"
cmake --build build

echo "`nRunning the program...`n"

.\bin\CustomMemoryAllocator.exe