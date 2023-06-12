FROM archlinux:latest

ARG TARGETARCH
RUN pacman -Sy
RUN pacman -S --noconfirm ttyd


EXPOSE 80
WORKDIR /root

CMD ["/bin/ttyd","-p" ,"4002","/bin/bash"]
