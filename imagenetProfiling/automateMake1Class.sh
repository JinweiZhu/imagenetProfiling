cd /tmp
mkdir imagenet
cd imagenet
mkdir train
mkdir val
cd /imagenet/train

cp -r n03785016 /tmp/imagenet/train
cd /tmp/imagenet/train/n03785016
ls -1tr | head -n -10 | xargs -d '\n' rm -f --
cd /imagenet/val

cp -r n01798484 /tmp/imagenet/val
cd /tmp/imagenet/val/n01798484
ls -1tr | head -n -10 | xargs -d '\n' rm -f --

cd /imagenet

cp meta.bin /tmp/imagenet
