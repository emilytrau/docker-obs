FROM jlesage/baseimage-gui:ubuntu-18.04

ENV APP_NAME="OBS"
RUN \
  APP_ICON_URL=https://obsproject.com/assets/images/new_icon_small.png && \
  install_app_icon.sh "$APP_ICON_URL"

RUN add-pkg software-properties-common && \
    add-apt-repository ppa:obsproject/obs-studio && \
    add-pkg ffmpeg obs-studio

ENV KEEP_APP_RUNNING=1

COPY startapp.sh /startapp.sh
