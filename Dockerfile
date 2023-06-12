FROM archlinux:latest

ARG TARGETARCH
RUN pacman -Sy
RUN pacman -S --noconfirm ttyd python3 wget curl


EXPOSE 80
WORKDIR /root
COPY deploy.sh /root/
#RUN bash deploy.sh
CMD ["/bin/bash","/root/deploy.sh"]










