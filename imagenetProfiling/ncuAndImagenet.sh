#!/bin/bash
#version 1
args=''
for i in "$@"; do
    i="${i//\\/\\\\}"
    args="$args \"${i//\"/\\\"}\""
done

if [ "$args" == "" ]; then args=/bin/bash; fi

if [ -e /dev/nvidia0 ]; then nv="--nv"; fi

/usr/local/bin/singularity \
  exec $nv \
  --overlay /share/apps/images/nsight-comput-2021.2.2.1.sqf:ro \
  --overlay /share/apps/datasets/imagenet/imagenet-train.sqf:ro \
  --overlay /share/apps/datasets/imagenet/imagenet-val.sqf:ro \
  /share/apps/images/cuda11.4.2-cudnn8.2.4-devel-ubuntu20.04.3.sif \
  /bin/bash -c "
export PATH=.:/ext3/nsight-compute/2021.2.2.1:/ext3/nsight-systems/2022.1.1/bin:\$PATH
$args
"
#"/share/apps/images/run-nsight-comput-2021.2.2.1.bash" [readonly] 20L, 482C