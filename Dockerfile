FROM alpine
ENV PROJ_NAME=ssh-docker

ADD ./ /$PROJ_NAME
RUN apk update && apk add --no-cache \
	openssh-client \
	autossh \
	sshpass

# Run entrypoint
CMD ["/usr/bin/ssh"]
