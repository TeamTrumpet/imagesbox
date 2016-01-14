FROM node:5
MAINTAINER Wyatt Johnson <wyatt@trumpet.ca>

RUN apt-get update

RUN wget http://download.gna.org/wkhtmltopdf/0.12/0.12.2.1/wkhtmltox-0.12.2.1_linux-jessie-amd64.deb

RUN apt-get install -y iso-codes libatk1.0-0 libatk1.0-data libdrm-intel1 libdrm-nouveau2 \
  libdrm-radeon1 libdrm2 libegl1-mesa libegl1-mesa-drivers libelf1 libfontenc1 \
  libgbm1 libgl1-mesa-dri libgl1-mesa-glx libglapi-mesa \
  libgstreamer-plugins-base0.10-0 libgstreamer0.10-0 libgtk2.0-0 libgtk2.0-bin \
  libgtk2.0-common libllvm3.5 libmtdev1 libopenvg1-mesa liborc-0.4-0 \
  libpciaccess0 libqt5core5a libqt5dbus5 libqt5gui5 libqt5network5 \
  libqt5opengl5 libqt5printsupport5 libqt5qml5 libqt5quick5 libqt5sql5 \
  libqt5sql5-sqlite libqt5svg5 libqt5webkit5 libqt5widgets5 libqt5xmlpatterns5 \
  libtxc-dxtn-s2tc0 libwayland-client0 libwayland-egl1-mesa libwayland-server0 \
  libwebp5 libx11-xcb1 libxaw7 libxcb-dri2-0 libxcb-dri3-0 libxcb-glx0 \
  libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-present0 libxcb-randr0 \
  libxcb-render-util0 libxcb-shape0 libxcb-sync1 libxcb-util0 libxcb-xfixes0 \
  libxcb-xkb1 libxcomposite1 libxcursor1 libxdamage1 libxfixes3 libxfont1 \
  libxi6 libxinerama1 libxkbcommon-x11-0 libxkbcommon0 libxkbfile1 libxmu6 \
  libxmuu1 libxrandr2 libxshmfence1 libxxf86vm1 qttranslations5-l10n \
  x11-xkb-utils xauth xfonts-base xfonts-encodings xfonts-utils xkb-data xnest \
  xserver-common xfonts-75dpi

RUN dpkg -i wkhtmltox-0.12.2.1_linux-jessie-amd64.deb
