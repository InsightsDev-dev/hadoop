echo "Installing Protoc"

cd /tmp
git clone https://github.com/google/protobuf google-protobuf
cd google-protobuf
./autogen.sh
./configure --prefix=/local/software/package/protobuf
make
make check
make install


echo "Starting Build ..."
mvn clean install -DskipTests
echo "Finished Build ..."

