FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    libsdl2-dev \
    libsdl2-image-dev \
    libsdl2-mixer-dev \
    libsdl2-ttf-dev \
    libopenal-dev \
    libglew-dev \
    zlib1g-dev

WORKDIR /app
COPY . .

RUN mkdir build && cd build && cmake ../OpenClaw && make

CMD ["./build/OpenClaw"]
