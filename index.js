#!/usr/bin/env node

const shell = require('shelljs');
const path = require('path');
shell.exec(path.resolve(__dirname, 'playcs16.sh'));
