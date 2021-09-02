docker build --no-cache --pull --build-arg CN_MIRROR=1 -t symbolspace/zhparser:14beta3 -f ./14/Dockerfile ./14/
docker tag symbolspace/zhparser:14beta3 symbolspace/zhparser:14

source ./docker-login.sh
docker push -a symbolspace/zhparser

docker image rm symbolspace/zhparser:14beta3
docker image rm symbolspace/zhparser:14
docker image rm symbolspace/postgis:14beta3
docker image rm postgres:14beta3