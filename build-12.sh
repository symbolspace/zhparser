docker build --no-cache --pull --build-arg CN_MIRROR=1 -t symbolspace/zhparser:12.8 -f ./12/Dockerfile ./12/
docker tag symbolspace/zhparser:12.8 symbolspace/zhparser:12

source ./docker-login.sh
docker push -a symbolspace/zhparser

docker image rm symbolspace/zhparser:12
docker image rm symbolspace/zhparser:12.8
docker image rm symbolspace/postgis:12.8
docker image rm postgres:12.8