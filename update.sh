#stop all running processes
forever stopall
echo "Enter the new version to be published:"
read version
#update the current project
cd /root/ObscureIM
git pull
cd build
cmake ..
make
#after making we zip the files
cd src
zip v$version-ubuntu.zip ./miner ./Obscured ./obscure-service ./zedwallet-beta ./wallet-api
cp ./v$version-ubuntu.zip /root/
unzip /root/v0.1.3-ubuntu.zip -d /root/
cp /root/Obscured /root/obscured-ha/
cp /root/obscure-service /root/walletd-ha/
#for VPS 1
forever start /root/obscured-ha/service.js
forever start /root/walletd-ha/service.js
forever start /root/Obscure-faucet-complete/init.js
