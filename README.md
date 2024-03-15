Overview

This project provides a Docker image for running YOLOv8 TensorFlow Lite models on a Raspberry Pi 5 using the Google Coral Edge TPU Accelerator. The Docker image includes all the necessary dependencies for running YOLOv8, TensorFlow Lite, and the Edge TPU runtime.
Prerequisites

    -Raspberry Pi 5
    -Raspberry Pi OS Bullseye/Bookworm (64-bit)
    -Google Coral Edge TPU Accelerator (only usb version tested)
    -tflite model version of yolov8
to creat a tflite model from yolov8.pt see <a href="https://github.com/redhox/model_yolov8_to_coral">here</a>

## Installation

1. Clone this repository to your local machine.
2. Place your tflite model in the `model` folder at the root of the project.

the model use by the scripte is chose in L 11 (3 is third model in the folder)

        filename = f"{files[3]}"

3. Place your image in the `image` folder at the root of the project.

## Project Structure
    .
    ├── app.py
    ├── docker-compose.yml
    ├── Dockerfile
    ├── image
    │   ├── 19_28_34_563547.jpg
    │   ├── 19_28_36_841795.jpg
    │   ├── 19_28_38_404691.jpg
    │   ├── 19_28_39_986771.jpg
    ├── image.jpg
    ├── model
    │   ├── yolov8n_448_full_integer_quant_edgetpu.tflite
    │   ├── yolov8n_672_full_integer_quant_edgetpu.tflite
    │   ├── yolov8n_896_full_integer_quant_edgetpu.tflite
    │   ├── yolov8s_224_full_integer_quant_edgetpu.tflite
    │   ├── yolov8s_448_full_integer_quant_edgetpu.tflite
    └── README.md
