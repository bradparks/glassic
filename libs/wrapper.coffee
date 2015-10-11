#!/usr/bin/env node

require 'shelljs/global'

utils = require('./utils.coffee')
config = require('../config.json')

utils.validateConfig(config)

desktopFiles = ['README.md', 'package.json', 'index.html']
utils.replaceVars('templates/desktop', '../..', desktopFiles, config)

androidFiles = [
  'README.md'
  'app/build.gradle'
  'app/src/main/AndroidManifest.xml'
  'app/src/main/res/values/strings.xml'
  'app/src/main/res/menu/show_web_view.xml'
  'app/src/main/java/ro/northpole/mind/webview/ShowWebView.java'
]
utils.replaceVars('templates/android', '../..', androidFiles, config)