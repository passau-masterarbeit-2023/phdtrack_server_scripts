# Docker and nix

Nixos and docker work well together. [Here](https://nixos.wiki/wiki/Docker) is the nixos doc, [here](https://github.com/NixOS/nixpkgs/blob/master/pkgs/build-support/docker/examples.nix) the exemple, and [here](https://nixos.org/manual/nixpkgs/stable/#sec-pkgs-dockerTools) the references.

## use the nix defined image

To generate the image :

```shell
nix-build docker_image.nix
```

It will output a result file (binaries) which can be load as docker image with :

```shell
docker load < result
```

Then, we can run the container with :

```shell
docker run -it <image id>
```
