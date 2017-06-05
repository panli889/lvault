#!/bin/bash

mkdir -p /go/src/github.com/laincloud/
ln -sf /lain/app /go/src/github.com/laincloud/lvault
cd $(npm root -g)/npm && npm install fs-extra && sed -i -e s/graceful-fs/fs-extra/ -e s/fs\.rename/fs.move/ ./lib/utils/rename.js && cd - # fix npm error
gobuildweb dist
unzip -o /lain/app/lvault-0.1.zip -d /lain/app
cd /lain/app/lvault-0.1

