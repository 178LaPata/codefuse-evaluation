#!/bin/bash

OUTFILE=$1
METRIC=$2
PROBLEMFILE=$3
k_max_value=$4

#SCRIPT_PATH=$(realpath "$0")
SCRIPT_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/$(basename "${BASH_SOURCE[0]}")"
SCRIPT_DIR=$(dirname "$SCRIPT_PATH")
MAIN_DIR=$(dirname "$SCRIPT_DIR")

echo $MAIN_DIR

 #OUTPUTFILE：file information produced by the model
 #METRIC：evaluation metrics, for example pass@k
 #PROBLEMFILE：path of evaluation dataset
RUN_EVALUATION_CMD="python3
    $MAIN_DIR/evaluation.py \
    --input_file $OUTFILE\
    --metric $METRIC  \
    --problem_file $PROBLEMFILE \
    --k_max_value $k_max_value \
    --test_groundtruth False"

echo "----------evaluation start!!!------------"
echo $RUN_EVALUATION_CMD
eval $RUN_EVALUATION_CMD