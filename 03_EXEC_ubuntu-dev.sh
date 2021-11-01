if [ `docker ps | grep 'ubuntu-dev' | wc -l` -lt 1 ]; then
  echo ubuntu-dev is not running, start ubuntu-dev before exec.
  exit 1
fi
docker exec -it -u user ubuntu-dev bash -l

