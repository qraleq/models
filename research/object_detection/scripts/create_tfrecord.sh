#!/bin/bash
TRAIN_IMAGE_DIR="./object_detection/datasets/val2017/images/"
VAL_IMAGE_DIR="${TRAIN_IMAGE_DIR}"
TEST_IMAGE_DIR="${TRAIN_IMAGE_DIR}"
TRAIN_ANNOTATIONS_FILE="./object_detection/datasets/val2017/annotations/instances_val2017.json"
VAL_ANNOTATIONS_FILE="${TRAIN_ANNOTATIONS_FILE}"
TESTDEV_ANNOTATIONS_FILE="${TRAIN_ANNOTATIONS_FILE}"
OUTPUT_DIR="./object_detection/datasets/val2017/tfrecords/"

python ./object_detection/dataset_tools/create_coco_tf_record.py --logtostderr \
  --train_image_dir="${TRAIN_IMAGE_DIR}" \
  --val_image_dir="${VAL_IMAGE_DIR}" \
  --test_image_dir="${TEST_IMAGE_DIR}" \
  --train_annotations_file="${TRAIN_ANNOTATIONS_FILE}" \
  --val_annotations_file="${VAL_ANNOTATIONS_FILE}" \
  --testdev_annotations_file="${TESTDEV_ANNOTATIONS_FILE}" \
  --output_dir="${OUTPUT_DIR}"
