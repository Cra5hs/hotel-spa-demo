version=2.0
name=hotel
registry=stock-trading
docker build -t hotel/$name:$version .

docker images | grep $name

doctl registry login

docker tag hotel/$name:$version registry.digitalocean.com/$registry/$name:$version

docker push registry.digitalocean.com/$registry/$name:$version