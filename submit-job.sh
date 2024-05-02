#!/bin/bash

# Parameters
MAX_CORES=$(nproc)

# Define a function to process each dataset
process_dataset() {
    dataset=$1
    cpulimit -l 1 -f -- python main.py --dataset "$dataset"
}

# Export the function so it can be used by parallel
export -f process_dataset

# Find all CSV files in the data directory and process each one in parallel
find data -name '*.csv' | parallel -j "$MAX_CORES" process_dataset
