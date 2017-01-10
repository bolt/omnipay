#!/usr/bin/env bash

echo "Updating…"
composer update
[[ $? != 0 ]] && exit 1

echo "Removing what we don't need"
rm ../lib/guzzle/ ../lib/symfony/ -rf
[[ $? != 0 ]] && exit 1

echo "Dumping new autoloader…"
composer dump
[[ $? != 0 ]] && exit 1
