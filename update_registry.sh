#!/bin/bash

DATA_DIR=results

md5sum ${DATA_DIR}/*.nc | sed -r "s/([a-z0-9]+)\ \ (.*)/\2 md5:\1/" > registry.txt

echo "Update md5 sum for registry.txt in SwarmPAL-HVI/src/data.py to:"
echo -n "md5:"
md5sum registry.txt | cut -f 1 -d ' '
