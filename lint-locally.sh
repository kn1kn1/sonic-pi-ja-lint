#!/bin/sh
rm -rf sonic-pi
git clone https://github.com/samaaron/sonic-pi.git
ls -al
curl https://hosted.weblate.org/download/sonic-pi/tutorial/ja/ -o sonic-pi/etc/doc/lang/sonic-pi-tutorial-ja.po

# generate transrated md files
sonic-pi/app/server/ruby/bin/i18n-tool.rb -t

# text-lint
#node_modules/.bin/textlint -f junit -o report.xml sonic-pi/etc/doc/generated/ja/tutorial
node_modules/.bin/textlint sonic-pi/etc/doc/generated/ja/tutorial
