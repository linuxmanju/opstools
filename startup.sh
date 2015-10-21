### startup


docker run -d --name rabbitmq linuxmanju/rabbitmq
docker run -d --name redis redis
docker run -d --link redis:redis --link rabbitmq:rabbitmq --name sensu-api linuxmanju/sensu-api
docker run -d --link redis:redis --link rabbitmq:rabbitmq --link sensu-api:sensu-api --name sensu-server linuxmanju/sensu-server
docker run -p 3000:3000 --link sensu-api:sensu-api --name uchiwa -d linuxmanju/uchiwa
