#!/bin/sh
set -e

namespace=$1
name=$2
file=$3
wd=$4

params=""

if [ ! -z "$namespace" ]; then
params="${params} --namespace $namespace"
fi

if [ ! -z "$name" ]; then
params="${params} --name $name"
fi

if [ ! -z "$file" ]; then
params="${params} --file $file"
fi

if [ ! -z "$wd" ]; then
cd $wd
fi

echo running: okteto stack destroy $params on $(pwd)
okteto stack destroy $params