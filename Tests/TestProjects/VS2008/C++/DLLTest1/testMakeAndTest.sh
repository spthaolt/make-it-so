# Change to working folder...
cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd

# Build the test...
make

# Run the test and store the output...
pushd gccDebug
./client.exe > testOutput.txt
popd

pushd gccRelease
./client.exe > testOutput.txt
popd
