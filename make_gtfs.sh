#!/bin/bash

set -ev

mkdir output

osm2gtfs -c osm2gtfs/osm2gtfs/creators/gh_accra/config.json

cp ./data/gh-accra.zip ./output/gh-accra.zip

cd output

python ../transitfeed-1.2.16/feedvalidator.py gh-accra.zip || :

unzip gh-accra.zip

cd ..
