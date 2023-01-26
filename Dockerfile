FROM python:3.7-alpine
LABEL org.opencontainers.image.source https://github.com/darinpope/jenkins-example-ghcr
CMD [ "python", "-c", "print('Hi there!')"]
