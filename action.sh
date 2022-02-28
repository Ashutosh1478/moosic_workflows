curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm i -g yarn pm2
sudo apt-get install git ffmpeg -y
git clone https://github.com/ArnabXD/TGVCBot 
cd TGVCBot
yarn
yarn build
pm2 start npm --name "tgvc" -- run start --exp-backoff-restart-delay=1000
pm2 save
pm2 startup
