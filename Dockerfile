FROM alpine:3.4

RUN apk add --no-cache python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    rm -r /root/.cache && \
    pip install diff_cover

RUN apk add --no-cache bash git openssh

ADD drone-diff-cover /bin/

RUN chmod +x /bin/drone-diff-cover

ENTRYPOINT ["/bin/drone-diff-cover"]

