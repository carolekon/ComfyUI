@Echo Off

call .\.venv\scripts\activate.bat

Echo Entorno Virtual cp311 Activado

Echo Iniciando Comfyui

set PYTORCH_CUDA_ALLOC_CONF=max_split_size_mb:512,garbage_collection_threshold:0.8

.venv\scripts\python.exe -s main.py --disable-smart-memory --novram --use-pytorch-cross-attention --force-channels-last --fast --front-end-version Comfy-Org/ComfyUI_frontend@latest

pause