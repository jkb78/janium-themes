#!/bin/bash

set -x

# Compile Janium Stylesheets
lessc --compress less/bootstrap.less > css/murasaki.min.css
lessc --compress less/bootstrap-aka.less > css/aka.min.css
lessc --compress less/bootstrap-ao.less > css/ao.min.css
lessc --compress less/bootstrap-midori.less > css/midori.min.css
lessc --compress less/bootstrap-mizuiro.less > css/mizuiro.min.css
lessc --compress less/bootstrap-momoiro.less > css/momoiro.min.css
lessc --compress less/bootstrap-orenji.less > css/orenji.min.css
#lessc --compress less/bootstrap-black-and-blue.less > css/black-and-blue.min.css
lessc --compress less/bootstrap-modern.less > css/modern.min.css
lessc --compress less/bootstrap-janium-one.less > css/janium_one.min.css
lessc --compress less/bootstrap-simply-red.less > css/simply_red.min.css
lessc --compress less/bootstrap-deep-blue.less > css/deep_blue.min.css
lessc --compress less/bootstrap-navy.less > css/navy.min.css

