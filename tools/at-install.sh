#!/usr/bin/sh

export baseDir=/sites/at
export zipFile=~/at.zip

if [ ! -d $baseDir ]; then
  echo FATAL: no $baseDir
  exit 1
fi

cd $baseDir || exit 2
unzip -o $zipFile
docker-compose -p at down
docker-compose -p at up -d
