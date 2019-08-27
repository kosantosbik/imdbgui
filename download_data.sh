#!/bin/bash
# This script downloads the datasets from imdb website
# and extracts them.

# Dataset links
prefix='https://datasets.imdbws.com/'
name_basics='name.basics.tsv.gz'
title_basics='title.basics.tsv.gz'
title_principals='title.principals.tsv.gz'
title_crew='title.crew.tsv.gz'
title_ratings='title.ratings.tsv.gz'

# Download datasets
echo "Downloading datasets from IMDb..."
wget --quiet --show-progress $prefix$name_basics
wget --quiet --show-progress $prefix$title_basics
wget --quiet --show-progress $prefix$title_principals
wget --quiet --show-progress $prefix$title_crew
wget --quiet --show-progress $prefix$title_ratings
echo "Download complete."

# Extract datasets
echo "Extracting datasets..."
gunzip $name_basics
gunzip $title_basics
gunzip $title_principals
gunzip $title_crew
gunzip $title_ratings
echo "Extraction complete."
