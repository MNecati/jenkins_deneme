FROM python:3.7-alpine
LABEL org.opencontainers.image.source https://github.com/MNecati/jenkins_deneme.git
CMD [ "python", "-c", "print('Hi there!')"]
