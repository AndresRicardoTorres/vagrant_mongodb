//rs.conf()
var config ={
        "_id" : "rs2",        
        "members" : [
                {
                        "_id" : 0,
                        "host" : "192.168.1.109:27017"
                },
                {
                        "_id" : 1,
                        "host" : "192.168.1.110:27017"
                },
                {
                        "_id" : 2,
                        "host" : "192.168.1.111:27017"
                }
        ]
}
rs.initiate(config);
rs.conf();
//rs.add("192.168.1.107")
//rs.add("192.168.1.108")	