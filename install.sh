#!/bin/bash -e

cd "$(dirname $0)"

chmod u+x socksd

ln -s $PWD/socksd /usr/local/bin
