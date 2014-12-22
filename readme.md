# Consul-template
> As a docker image

Take me for a spin..

```sh
docker run -it --rm \
  --name templater \
  -e "CONSUL_TEMPLATE_LOG=debug" \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $PWD/config:/config \
  -v $PWD/source:/source \
  -v $PWD/destination:/destination \
  -v $PWD/command:/command \
  consul-template
```

Read more over [here](https://github.com/hashicorp/consul-template).
