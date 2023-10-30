#!/bin/bash
MODELNAME=$1                 # modle name which in ckpt_config.json
EVALDATASET=$2               # evaluation dataset path information(dataset name which in generation.py)
OUTFILE=$3                   # the path to save the generated results
LANGUAGE=$4                  # evaluated code language

SCRIPT_PATH=$(realpath "$0")
SCRIPT_DIR=$(dirname "$SCRIPT_PATH")
MAIN_DIR=$(dirname "$SCRIPT_DIR")

echo $MAIN_DIR

# mbpp_mode parameters, support en and cn
# task_mode parameters：task type -- code_completion, text_to_code
RUN_GENERATION_CMD="python \
    $MAIN_DIR/generation_v2.py \
    --eval_dataset $EVALDATASET\
    --model_name $MODELNAME\
    --language $LANGUAGE\
    --output_file $OUTFILE"

echo "----------generation start!!!------------"
echo $RUN_EVALUATION_CMD
eval $RUN_GENERATION_CMD