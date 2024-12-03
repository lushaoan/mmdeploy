'''
Author: Lu ShaoAn
Brief: 
Version: 0.1
Date: 2024-11-05 10:47:37
Copyright: Copyright (c) 2024
'''
onnx_config = dict(
    type='onnx',
    export_params=True,
    keep_initializers_as_inputs=False,
    opset_version=11,
    save_file='end2end.onnx',
    input_names=['input'],
    output_names=['output'],
    input_shape=None,
    optimize=True)

codebase_config = dict(type='mmpose', task='PoseDetection')

backend_config = dict(type='onnxruntime')