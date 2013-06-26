echo "mongo_master.sh"
echo "tar -zxf mongodb-linux-i686-2.0.6.tgz"
tar -zxf /root/mongodb-linux-i686-2.0.6.tgz -C /root/
echo "mv mongodb-linux-i686-2.0.6 mongodb"
mv /root/mongodb-linux-i686-2.0.6 /root/mongodb
echo "mkdir /mongodata -p"
mkdir /mongodata -p
echo "/root/mongodb/bin/mongod --master --dbpath /mongodata"
/root/mongodb/bin/mongod --master --dbpath /mongodata &