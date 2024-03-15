FROM python:3.9.18-bookworm
RUN apt-get update && apt-get install -y python3-opencv wget
WORKDIR /app
RUN pip install torch torchvision 
RUN pip install ultralytics
RUN pip install tflite-runtime
RUN  wget https://github.com/feranick/libedgetpu/releases/download/16.0TF2.16.0-rc0-1/libedgetpu1-std_16.0tf2.16.0rc0-1.bookworm_arm64.deb
RUN dpkg -i libedgetpu1-std_16.0tf2.16.0rc0-1.bookworm_arm64.deb
RUN export LD_LIBRARY_PATH=/usr/lib/aarch64-linux-gnu/
VOLUME [ "/app" ]
# CMD [ "python3", "app.py" ]
CMD [ "python3", "app.py" ]
