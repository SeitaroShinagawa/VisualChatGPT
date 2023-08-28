#!/bin/bash

export OPENAI_API_KEY=""

# mode="cpu"
mode="cuda:0"

python visual_chatgpt.py --load "Text2Box_${mode}, 
    Segmenting_${mode},
    ImageCaptioning_${mode},
    VisualQuestionAnswering_${mode},
    Text2Image_${mode},
    InstructPix2Pix_${mode}"
    
# The following module faild due to loading lllyasviel/ControlNet
# NormalText2Image_${mode},LineText2Image_${mode},
# Image2Hed_cpu,HedText2Image_${mode},Image2Line_cpu
# Image2Scribble_cpu,ScribbleText2Image_${mode},
# SegText2Image_${mode},Image2Pose_cpu,PoseText2Image_${mode},

# memo
# OpenCV: Image2Canny
# GoundingDINO: Text2Box
# SAM: Segmentin
# BLIP: ImageCaptioning
# BLIP-vqa: VisualQuestionAnswering
# Stable Diffusion: Inpainting, Text2Image
# SD+ControlNet: CannyText2Image, DepthText2Image
# Dense Prediction Transformer: Image2Depth, Image2Normal
# ControlNet: NormalText2Image, LineText2Image, Image2Hed, HedText2Image, Image2Line, Image2Scribble, ScribbleText2Image, SegText2Image, Image2Pose, PoseText2Image