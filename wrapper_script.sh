#!/bin/bash

/etc/init.d/nginx start & python3.7 metrics.py && fg