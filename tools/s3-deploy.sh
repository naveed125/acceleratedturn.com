if [ "$1" = "" ];then
  echo "usage: $0 <aws profile>"
  exit 1
fi

if [ ! -f ./www/index.html ]; then
  echo "Fatal: ./www/index.html not found"
  exit 2
fi

aws --profile $1 s3 sync www s3://www.acceleratedturn.com
