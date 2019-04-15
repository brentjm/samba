FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y samba
ENV DEBIAN_FRONTEND teletype

EXPOSE 137/udp 138/udp 139 445

#ENTRYPOINT ["/usr/local/bin/tini", "--", "smbd"]
CMD ["service start samba"]
