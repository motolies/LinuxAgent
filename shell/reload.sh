#!/bin/bash

sudo systemctl reload nginx
echo [$(date --utc +%Y-%m-%d_%H:%M:%S)] reload complete