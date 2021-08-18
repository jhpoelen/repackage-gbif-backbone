### Repackage GBIF Backbone

Global Biodiversity Information Facility (GBIF) facilitates access to billions of biodiversity data records. This records include detailed accounts of life on earth.

To help find specific life forms, GBIF provides a taxonomic backbone [1,2]. This backbone contains a long list of names used to describe species and associated hierarchies and taxonomic publications. These lists are sourced from datasets around the world.

At time of writing (18 Aug 2021), GBIF publishes a simplified version of their taxonomic backbone at [https://hosted-datasets.gbif.org/datasets/backbone/](https://hosted-datasets.gbif.org/datasets/backbone/) [1].

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
$ ls target/
gbif-backbone-by-name.tsv.gz
gbif-backbone-by-id.tsv.gz
```

# References 

[1] Simplied GBIF Backbone Taxonomy. Accessed at https://hosted-datasets.gbif.org/datasets/backbone/ on 2021-08-18. 
[2] GBIF Secretariat (2021). GBIF Backbone Taxonomy. Checklist dataset https://doi.org/10.15468/39omei accessed via GBIF.org on 2021-08-18. 

