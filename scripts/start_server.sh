echo "Starting the server"

sudo npm install --prefix /home/ubuntu/Code/express-codedeploy-3
npm run build --prefix /home/ubuntu/Code/express-codedeploy-3
sudo systemctl restart node-api.service