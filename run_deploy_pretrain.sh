pip install onnx
pip install onnxruntime
pip install cython
pip install packaging
pip install setuptools


cd /dataset/shaoanlu/github/mmlab/mmpretrain/
mim install -e .

cd /dataset/shaoanlu/github/mmlab/mmdeploy/
mim install -e .

python ./tools/deploy.py \
    configs/mmpretrain/classification_onnxruntime_static.py \
    /dataset/shaoanlu/github/mmlab/mmpretrain/configs/barcode/1d/exp1.py \
    /dataset/shaoanlu/github/mmlab/mmpretrain/work_dirs/1d/exp1/epoch_200.pth \
    /dataset/shaoanlu/github/mmlab/mmpretrain/work_dirs/1d/deploy_img/20210324103319849_pos_0.jpg \
    --work-dir ./work_dir/cls/1d/exp1