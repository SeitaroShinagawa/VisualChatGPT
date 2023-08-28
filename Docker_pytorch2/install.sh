#!/bin/bash

# git clone -b dev https://github.com/camenduru/Grounded-Segment-Anything
# cd Grounded-Segment-Anything && pip install -r requirements.txt

# pip install segment_anything
# pip install -e GroundingDINO

JUPYTER_CONFIG_FILE="/root/.jupyter/jupyter_lab_config.py"
{ 
echo "c.IPKernelApp.pylab = 'inline'
c.NotebookApp.open_browser = False
c.NotebookApp.ip = '0.0.0.0'
c.NotebookApp.port = 8890
c.NotebookApp.allow_remote_access = True"
} >> $JUPYTER_CONFIG_FILE

# download SAM model
# wget https://dl.fbaipublicfiles.com/segment_anything/sam_vit_h_4b8939.pth


pip install -r ../requirements.txt
pip install  git+https://github.com/IDEA-Research/GroundingDINO.git
pip install  git+https://github.com/facebookresearch/segment-anything.git
pip install gradio jupyterlab opencv-contrib-python
