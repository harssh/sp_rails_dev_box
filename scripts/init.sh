mkdir /opt/redis
mkdir /opt/redis/bin
cd /opt/redis
wget http://download.redis.io/releases/redis-2.8.9.tar.gz
tar xzf redis-2.8.9.tar.gz
cd redis-2.8.9
make
make install
sudo service redis_6379 start
cd utils
sudo ./install_server.sh