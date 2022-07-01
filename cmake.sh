#! /bin/bash

if [ $# -lt 1 ] ; then
  echo "Usage: $0 </absolute/path/to/hbase/home>"
  exit 1
fi

HBASE_HOME=$1
mkdir build
cd build
cmake -D DOWNLOAD_DEPENDENCIES=ON -D HBASE_HOME=${HBASE_HOME} -D SKIP_TESTS=ON ..

cd ${HBASE_HOME}/hbase-common
sh src/saveVersion_3.0.0-alpha-3.sh 1.1.2 target/generated-sources
