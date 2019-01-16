cd /root/obsidian/
git pull
cd /root/obsidian/build
cmake ..
make
cd src
zip vSomeVersion.zip ./miner ./turtle-service ./Obsidiand
rm -rf /root/.Obsidian
cp ./Obsidiand /root/obsidiand-ha/
cd /root/obsidiand-ha/
forever start service.js
cd /root/
cd /root/sharedFolder/
cp /root/obsidian/build/src/vSomeVersion.zip .
python -m SimpleHTTPServer

