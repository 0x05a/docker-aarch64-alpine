FROM ubuntu:24.10

RUN apt-get update
RUN apt-get install -y qemu-system-aarch64

RUN mkdir /alpine/

COPY alpine.qcow2 /alpine/
COPY run.sh /alpine/
COPY QEMU_EFI-pflash.raw /alpine/

RUN mkdir /alpine/shared

RUN chmod +x /alpine/run.sh

CMD ["bash", "/alpine/run.sh"]
