FROM debian:trixie

RUN apt-get update && apt-get install -y meson pkgconf libwayland-dev libxkbcommon-dev

WORKDIR /app
ADD . .

RUN meson build
RUN ninja -C build
