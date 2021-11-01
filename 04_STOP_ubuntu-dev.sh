if [ `docker ps | grep 'ubuntu-dev' | wc -l` -lt 1 ]; then
  echo ubuntu-dev is not running, exit.
  exit 1
fi
docker stop ubuntu-dev

