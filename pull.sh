wget http://209.97.174.174:8000/vSomeVersion.zip
unzip vSomeVersion.zip
forever stopall
cp ./Obsidiand /root/obsidiand-ha/
cd /root/obsidiand-ha/
forever start service.js
