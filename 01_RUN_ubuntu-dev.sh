if [ `docker ps -a | grep 'ubuntu-dev' | wc -l` -lt 1 ]; then
  docker run -dt \
	--mount type=bind,source="$(pwd)"/prj,target=/home/user/prj \
	--name ubuntu-dev \
	ubuntu-dev
fi

if [ `uname` == Darwin ]; then
  ipadr=localhost
else
  ipadr=`hostname -I | awk '{print $1}'`
fi
echo "=== ${ipadr} ==="

