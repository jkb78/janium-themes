#!/bin/bash

set -x

# Compile Janium Stylesheets
lessc --compress less/murasaki > dist/css/murasaki.min.css
lessc --compress less/aka.less > dist/css/aka.min.css
lessc --compress less/ao.less > dist/css/ao.min.css
lessc --compress less/midori.less > dist/css/midori.min.css
lessc --compress less/mizuiro.less > dist/css/mizuiro.min.css
lessc --compress less/momoiro.less > dist/css/momoiro.min.css
lessc --compress less/orenji.less > dist/css/orenji.min.css
####lessc --compress less/bootstrap-black-and-blue.less > dist/css/black-and-blue.min.css
#lessc --compress less/modern.less > dist/css/modern.min.css
#lessc --compress less/janium-one.less > dist/css/janium_one.min.css
#lessc --compress less/simply-red.less > dist/css/simply_red.min.css
#lessc --compress less/deep-blue.less > dist/css/deep_blue.min.css
#lessc --compress less/navy.less > dist/css/navy.min.css
