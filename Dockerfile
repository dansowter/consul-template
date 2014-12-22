FROM progrium/busybox
RUN opkg-install bash

ENV CONSUL_TEMPLATE_RELEASE https://github.com/hashicorp/consul-template/releases/download/v0.5.0/consul-template_0.5.0_linux_amd64.tar.gz
ADD bin/consul-template /bin/consul-template

ADD https://get.docker.io/builds/Linux/x86_64/docker-1.3.3 /bin/docker
RUN chmod +x /bin/docker

ENTRYPOINT ["/bin/consul-template"]
CMD ["-config=/config"]
