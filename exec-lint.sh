#!/bin/sh
git submodule foreach 'git checkout master; git pull'

ls -al

# generate transrated md files
sonic-pi/app/server/bin/i18n-tool.rb -t

# text-lint
node_modules/.bin/textlint sonic-pi/etc/doc/generated/ja/tutorial
