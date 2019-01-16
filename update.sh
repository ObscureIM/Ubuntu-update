cd /root/obsidian/
git pull
cd /root/obsidian/build
cmake ..
make
cd src
zip vSomeVersion.zip ./miner ./turtle-service ./Obsidiand
cd /root/
cd /root/sharedFolder/
cp /root/obsidian/build/src/vSomeVersion.zip .
python -m SimpleHTTPServer

