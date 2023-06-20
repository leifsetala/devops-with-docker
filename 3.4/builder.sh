#!/bin/bash

set -e

if [ "$#" -ne 2 ]; then
    echo "Usage: ./build_and_push.sh <github_repo> <docker_tag>"
    exit 1
fi

if [ -z "$DOCKER_USER" ] || [ -z "$DOCKER_PWD" ]; then
    echo "The DOCKER_USER and DOCKER_PWD environment variables must be set."
    exit 1
fi

echo $DOCKER_PWD | docker login -u $DOCKER_USER --password-stdin

github_repo=$1
docker_tag=$2

github_base_url="https://github.com"

repository_url="$github_base_url/$github_repo"

repo_name=$(basename $github_repo)

echo "Cloning from $repository_url"

git clone $repository_url

cd $repo_name

docker build -t $docker_tag .

docker push $docker_tag

cd ..
rm -rf $repo_name

echo "Done"