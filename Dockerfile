FROM debian
RUN apt-get update
RUN apt-get install -y x11vnc xvfb
RUN mkdir ~/.vnc
RUN x11vnc -storepasswd 1234 ~/.vnc/passwd
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x *.sh
ENTRYPOINT ["/entrypoint.sh"]
