#!/bin/bash

DATA_DIR=results

md5sum ${DATA_DIR}/*.nc | sed -r "s/([a-z0-9]+)\ \ (.*)/\2 md5:\1/" > registry.txt
