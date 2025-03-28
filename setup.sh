#!/bin/bash
sudo apt install -y nala kitty; \
sudo dpkg --add-architecture i386; \
#sudo mkdir -pm755 /etc/apt/keyrings; \
#wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo gpg --dearmor -o /etc/apt/keyrings/winehq-archive.key -; \
#sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources; \
sudo nala update; \

sudo nala purge -y \
	libreoffice-base-core \
	libreoffice-calc \
	libreoffice-common \
	libreoffice-core \
	libreoffice-draw \
	libreoffice-gnome \
	libreoffice-gtk3 \
	libreoffice-help-common \
	libreoffice-help-de \
	libreoffice-help-en-us \
	libreoffice-impress \
	libreoffice-l10n-de \
	libreoffice-math \
	libreoffice-style-colibre \
	libreoffice-style-elementary \
	libreoffice-writer \
	gnome-2048 gnome-chess \
	gnome-klotski \
	gnome-mahjongg \
	gnome-nibbles \
	gnome-robots \
	gnome-sudoku \
	gnome-sushi \
	totem \
	rhythmbox \
	transmission-gtk \
	transmission-common \
	gnome-music \
	gnome-sound-recorder \
	cheese \
	evolution \
	gnome-mines \
	quadrapassel \
	lightsoff \
	gnome-taquin \
	iagno \
	hitori \
	swell-foop \
	gnome-tetravex \
	four-in-a-row \
	five-or-more \
	tali \
	aisleriot \
	zutty; \

#sudo apt install -y --install-recommends winehq-stable; \
sudo nala install -y xz-utils \
	libglm-dev \
	firmware-linux \
	gh \
	curl \
	htop \
	cmake \
	cmake-extras \
	extra-cmake-modules \
	libxcb-dri3-0 \
	libxcb-present0 \
	libpciaccess0 \
	libpng-dev \
	libxcb-keysyms1-dev \
	libxcb-dri3-dev \
	libx11-dev \
	g++ \
	gcc \
	g++-multilib \
	libwayland-dev \
	libxrandr-dev \
	libxcb-randr0-dev \
	libxcb-ewmh-dev \
	git \
	python-is-python3 \
	python3 \
	pipx \
	bison \
	libx11-xcb-dev \
	liblz4-dev \
	libzstd-dev \
	ocaml-core \
	ninja-build \
	pkg-config \
	libxml2-dev \
	wayland-protocols \
	python3-jsonschema \
	qtbase5-dev \
	qtwayland5 \
	autoconf \
	autoconf-archive \
	libtool \
	zip \
	nasm \
	libx11-dev \
	libxrandr-dev \
	libxcursor-dev \
	libxi-dev \
	libudev-dev \
	libgl1-mesa-dev \
	clang-format \
#	steam \
	flatpak \
	fonts-noto \
	fonts-noto-cjk;
