FROM progrium/busybox
ENV CONSUL_TEMPLATE_RELEASE https://github.com/hashicorp/consul-template/releases/download/v0.5.0/consul-template_0.5.0_linux_amd64.tar.gz
ADD bin/consul-template /bin/consul-template

ENTRYPOINT ["/bin/consul-template"]
CMD ["-config=/config"]
