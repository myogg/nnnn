#!/bin/sh

rm -rf _site && rm -rf .jekyll-cache

git add --all && git commit -m 'update' && git push origin master

bundle install && jekyll build

rm -rf ../mymsnn.github.io/mblog/*

cp -R _site/* ../mymsnn.github.io/mblog/

cd ../mymsnn.github.io/mblog/

git add --all && git commit -m 'update' && git push origin master