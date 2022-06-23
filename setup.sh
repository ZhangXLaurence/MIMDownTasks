

# 1. Setup segmentation code, based on MMSegmentation

# 1.1 Install mmcv
pip install -U openmim
mim install mmcv-full

# 1.2 Install MMSegmentation
pip install -v -e /workspace/mae_downtask/mae_seg/mmsegmentation


# 2. Setup detection code, based on Detectron2

# 2.1 Install Detectron2
pip install -v -e /workspace/mae_downtask/mae_det/detectron2/
# python -m pip install -e detectron2




# 3 Setup soft link for ADE20K and coco dataset
wget -p /dev/shm http://data.csail.mit.edu/places/ADEchallenge/ADEChallengeData2016.zip
unzip /dev/shm/ADEChallengeData2016.zip /dev/shm
ln -s /dev/shm/ADEChallengeData2016 /workspace/mae_downtask/mae_seg/mmsegmentation/data/ade/ADEChallengeData2016

# 3.2 setup coco data under /data
export DETECTRON2_DATASETS=/data

