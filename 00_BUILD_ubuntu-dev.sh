if [ `docker image ls | grep 'ubuntu-dev' | wc -l` -lt 1 ]; then
  docker build -t ubuntu-dev --build-arg http_proxy="$http_proxy" --build-arg https_proxy="$https_proxy" .
fi

