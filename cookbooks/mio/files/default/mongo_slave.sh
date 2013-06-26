echo "mongo_slave.sh"
tar -zxf mongodb-linux-i686-2.0.6.tgz -c /root/
mv /root/mongodb-linux-i686-2.0.6 /root/mongodb
mkdir /mongodata -p
/root/mongodb/bin/mongod --slave --source 192.168.1.111 --dbpath /mongodata &