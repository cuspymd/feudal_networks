#!/bin/sh
python train.py -m child && tail -f /tmp/pong/*.out
