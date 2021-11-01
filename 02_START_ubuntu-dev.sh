if [ `docker ps | grep 'ubuntu-dev' | wc -l` -lt 1 ]; then
  docker start ubuntu-dev
fi

if [ `uname` == Darwin ]; then
  ipadr=localhost
else
  ipadr=`hostname -I | awk '{print $1}'`
fi
echo "=== ${ipadr} ==="

