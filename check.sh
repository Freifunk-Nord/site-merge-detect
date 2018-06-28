#! /bin/sh

set -e

curl -s https://mesh.freifunknord.de/data/meshviewer.json -o meshviewer.json
./site-merge-detect.py meshviewer.json || {
    cp meshviewer.json "meshviewer_$(date '+%s').json"
}
