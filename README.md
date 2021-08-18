### Repackage GBIF Backbone

Global Biodiversity Information Facility (GBIF) facilitates access to billions of biodiversity data records. This records include detailed accounts of life on earth.

To help find specific life forms, GBIF provides a taxonomic backbone. This backbone contains a long list of names used to describe species and associated hierarchies and taxonomic publications. These lists are sourced from datasets around the world.

At time of writing (18 Aug 2021), GBIF publishes a simplified version of their taxonomic backbone at [https://hosted-datasets.gbif.org/datasets/backbone/](https://hosted-datasets.gbif.org/datasets/backbone/) .

This repository provides script to pre-process https://hosted-datasets.gbif.org/datasets/backbone/backbone-current-simple.txt.gz to help facilitate access and improve performance of the creation of search indexes. 

Pre-process steps currently include:

1. reducing amount of columns
2. reverse sort by id
3. reverse sort by name 

## Usage

```
$ repackage-gbif-backbone.sh
...
(some time later)
...
$ ls -1 | grep gz
gbif-backbone-current-simplerer-by-name.txt.gz
gbif-backbone-current-simpler-by-id.txt.gz
```





