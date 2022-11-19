cd /tmp
mkdir imagenet
cd imagenet
mkdir train
mkdir val
cd /imagenet/train

cp -r n04346328  n06359193 \
n01775062  n02088238  n02108915  n02321529  n02749479 \
n03028079  n03459775  n03785016 \/tmp/imagenet/train

cd /imagenet/val

cp -r n01798484  n02089973  n02110341  n02356798  n02786058  n03062245  n03481172  n03792782  n04044716  n04366367  n07579787 /tmp/imagenet/val

cd /imagenet

cp meta.bin /tmp/imagenet

