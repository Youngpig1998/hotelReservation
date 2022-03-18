# Hotel Reservation

A hotel reservation microservice, built with Go and gRPC, based on https://github.com/harlow/go-micro-services.

Supported actions: 
* Get profile and rates of nearby hotels available during given time periods
* Recommend hotels based on user provided metrics
* Place reservations

## Pre-requirements
- Docker
- Docker-compose
- luarocks (apt-get install luarocks)
- luasocket (luarocks install luasocket)

## Running the social network application
### Before you start
- Install Docker and Docker Compose.

### Start docker containers
docker stack deploy --compose-file docker-compose-swarm.yml hotel_reserv

#### workload generation
```bash
$WRK_DIR/wrk -D exp -t <num-threads> -c <num-conns> -d <duration> -L -s ./wrk2_lua_scripts/mixed-workload_type_1.lua http://x.x.x.x:5000 -R <reqs-per-sec>
```

### Questions and contact

You are welcome to submit a pull request if you find a bug or have extended the application in an interesting way. For any questions please contact us at: <microservices-bench-L@list.cornell.edu>





##### HotelReservation

* HotelReservation 有点棘手，因为它使用的 Consul 在使用 docker swarm 部署时存在网络问题，因此我们使用的解决方法是使用多个 docker-compose 文件部署它，每个服务器一个。 在这个 repo 中，我们假设有两个服务器，docker-compose 文件是 docker-compose-ath8.yml` 和 `docker-compose-ath9.yml 。其中 docker-compose-ath9.yml` 应该在 `docker-compose-ath8.yml之前执行。

* 还请将“config.json”中将“XXXIP”字段修改为您自己服务器的ip
