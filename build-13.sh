docker build --no-cache --pull --build-arg CN_MIRROR=1 -t symbolspace/zhparser:13.4 -f ./13/Dockerfile ./13/
docker tag symbolspace/zhparser:13.4 symbolspace/zhparser:13
docker tag symbolspace/zhparser:13.4 symbolspace/zhparser:latest

source ./docker-login.sh
docker push -a symbolspace/zhparser

docker image rm symbolspace/zhparser:13
docker image rm symbolspace/zhparser:13.4
docker image rm symbolspace/zhparser:latest
docker image rm symbolspace/postgis:13.4
docker image rm postgres:13.4