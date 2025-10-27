#!/bin/bash
[ -f ~/.bashrc ] && source ~/.bashrc
cd ~/ugv_rpi/ && source $(poetry env info --path)/bin/activate && jupyter lab --ip=0.0.0.0 --port=8888 --no-browser
