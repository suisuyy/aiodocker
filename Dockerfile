FROM archlinux:latest

ARG TARGETARCH

RUN pacman -Syu --noconfirm ttyd python3 wget curl aria2  
#RUN wget ${DAVURL}/alisthome.tar
#RUN mv alisthome.tar /root


EXPOSE 80
WORKDIR /root
COPY deploy.sh /root/
#RUN bash deploy.sh
CMD ["/bin/bash","/root/deploy.sh"]










