if [ `docker ps | grep 'ubuntu-dev' | wc -l` -gt 0 ]; then
  docker stop ubuntu-dev
fi
if [ `docker ps -a | grep 'ubuntu-dev' | wc -l` -gt 0 ]; then
  docker rm ubuntu-dev
fi
if [ `docker images | grep 'ubuntu-dev' | wc -l` -gt 0 ]; then
  docker rmi ubuntu-dev
fi

