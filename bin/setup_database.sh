# Fetch Plotly master datasets to $HOME.
apt-get install unzip
cd && curl https://codeload.github.com/plotly/datasets/zip/master >| plotly_datasets.zip

# unzip datasets:
unzip plotly_datasets.zip
mv datasets-master /plotly_datasets

# create table
spark-submit /bin/create_hive_tables.py
