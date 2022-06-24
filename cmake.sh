#! /bin/bash

if [ $# -lt 1 ] ; then
  echo "Usage: $0 </absolute/path/to/hbase/home>"
fi

HBASE_HOME=$1
mkdir build
cd build
cmake -D DOWNLOAD_DEPENDENCIES=ON -D HBASE_HOME=${HBASE_HOME} -D SKIP_TESTS=ON ..
