#!/bin/sh
git submodule init
git submodule update
git submodule foreach 'git checkout master; git pull'

ls -al

# generate transrated md files
sonic-pi/app/server/bin/i18n-tool.rb -t

# text-lint
node_modules/.bin/textlint -f junit -o report.xml sonic-pi/etc/doc/generated/ja/tutorial
