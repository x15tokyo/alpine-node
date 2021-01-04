#/bin/sh

for tag in 15.5.1 15.5 15 slim-15.5.1 slim-15.5 slim-15 latest slim; do
  git tag -f $tag
  git push -f origin $tag
  docker push mhart/alpine-node:$tag
done

git push
