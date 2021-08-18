#!/bin/bash
#
# Repackages GBIF backbone https://hosted-datasets.gbif.org/datasets/backbone
# into data products optimized for index building. 
# Repackage process currently includes creating various reverse sorted, 
# trimmed, versions of GBIF's Simplified Backbone.
#
# Note that GNU's sort ignores whitespaces when sorting using some locale.
# To include whitespaces in the sorting of names, ```LC_ALL=C sort -r```
# was used as suggested in 
# https://stackoverflow.com/questions/2691821/unexpected-result-from-gnu-sort .
#
# Example usage:
#
# ./repackage-gbif-backbone.sh 
#
# 
#

set -xe

date

mkdir -p target

curl https://hosted-datasets.gbif.org/datasets/backbone/backbone-current-simple.txt.gz\
| gunzip\
| tr '\r' '\n'\
| cut -f1-20\
| LC_ALL=C sort -nr\
| gzip\
| tee target/gbif-backbone-current-simpler-by-id.txt.gz\
| gunzip\
| cut -f1,20\
| awk -F '\t' '{ print $2 "\t" $1 }'\
| LC_ALL=C sort -r\
| gzip\
 1> target/gbif-backbone-current-simplerer-by-name.txt.gz
