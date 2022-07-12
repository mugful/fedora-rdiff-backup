FROM quay.io/fedora/fedora:36-x86_64
MAINTAINER Jiri Stransky <jistr@jistr.com>

RUN dnf -y update --refresh; dnf clean all

COPY build.sh /root/build.sh
RUN /root/build.sh

# Run bash by default, but user will likely override the command to
# rdiff-backup with some flags.
CMD ["/usr/bin/bash"]
