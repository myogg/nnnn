#!/bin/sh

rm -rf _site && rm -rf .jekyll-cache

git add --all && git commit -m 'update' && git push origin master

bundle install && jekyll build

rm -rf ../myogg.github.io/*

cp -R _site/* ../myogg.github.io/

cd ../myogg.github.io/

git add --all && git commit -m 'update' && git push origin master
