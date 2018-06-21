FROM alpine
COPY binaries.tar.gz /tmp/
RUN tar -xzf /tmp/binaries.tar.gz -C /tmp/
RUN cp /tmp/binaries/Linux/intel/static/vlmcsdmulti-x64-musl-static /usr/local/bin/
CMD vlmcsdmulti-x64-musl-static vlmcsd -L 0.0.0.0:1688 -e -D
EXPOSE 1688
