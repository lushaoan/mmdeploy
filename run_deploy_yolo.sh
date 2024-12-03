pip install onnx
pip install onnxruntime
pip install cython
pip install packaging
pip install setuptools

mim install -e /dataset/shaoanlu/github/mmlab/mmdetection/
mim install -e /dataset/shaoanlu/github/mmlab/mmdeploy/
mim install -e /dataset/shaoanlu/github/mmlab/mmyolo/

python ./tools/deploy.py \
    /dataset/shaoanlu/github/mmlab/mmyolo/configs/deploy/detection_onnxruntime_static.py \
    /dataset/shaoanlu/github/mmlab/mmyolo/configs/barcode/yolov8/exp1.py \
    /dataset/shaoanlu/github/mmlab/mmyolo/work_dirs/exp1/epoch_500.pth \
    /dataset/shaoanlu/github/mmlab/mmyolo/demo/20210823045208368.png.jpg \
    --work-dir ./work_dir/det/exp1