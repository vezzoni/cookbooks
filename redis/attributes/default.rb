default[:redis][:dir]       = "/etc/redis"
default[:redis][:data_dir]  = "/var/lib/redis"
default[:redis][:log_dir]   = "/var/log/redis"
# one of: debug, verbose, notice, warning
default[:redis][:loglevel]  = "debug"
default[:redis][:user]      = "redis"
default[:redis][:port]      = 6379
default[:redis][:bind]      = "0.0.0.0"

default[:sentinel][:port]        = "26379"
default[:sentinel][:master_name] = "master1"
default[:sentinel][:master_ip]   = "127.0.0.1"
default[:sentinel][:logfile]     = "/var/log/redis-sentinel.log"
default[:sentinel][:dir]         = "/var/log"
