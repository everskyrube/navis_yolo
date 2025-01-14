# YOLO11 Inference on NVIDIA Jetson Orin Nano Developer Kit

* Step 1. Pull the docker image from the dockerhub:

```bash
docker pull everskyrube/navis_yolo:latest
```

* Step 2. Clone this repository to your dev environment:

```bash
git clone https://github.com/everskyrube/navis_yolo.git
```

* Step 3. Grant executable permission to the following bash scripts:

```bash
cd navis_yolo
sudo chmod +x run.sh
sudo chmod +x start_inference.sh
```

* Step 4. Connect the USB Camera with the Jetson device, and then run the start_inference script:

```bash
./start_inference.sh
```
  
