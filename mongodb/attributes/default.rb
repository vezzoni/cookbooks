default[:mongodb][:baseurl]  = "http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/"

default[:mongodb][:logpath]  = "/var/log/mongodb/mongod.log"
default[:mongodb][:logappend]  = "true"
default[:mongodb][:fork]  = "true"
default[:mongodb][:port]  = "27017"
default[:mongodb][:dbpath]  = "/var/lib/mongo"
default[:mongodb][:pidfilepath]  = "/var/run/mongodb/mongod.pid"
default[:mongodb][:bind_ip]  = "0.0.0.0"
