docker build . -t docker-flask
docker swarm init
docker stack deploy -c docker-compose.yml flask

docker stack ls
docker stack ps flask
docker stack rm flask

docker swarm leave -f

docker service logs -f --tail 100 flask_web
sudo systemctl restart docker

docker exec -it bd1d2cbfe9a1 bash