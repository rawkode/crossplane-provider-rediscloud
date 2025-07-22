{ pkgs, lib, config, inputs, ... }:
{
  languages.go.enable = true;

  packages = with pkgs; [
    # Building
    curl
    git
    gnumake
    go-tools
    jq
    unzip

    # Testing
    kind
    kubectl
    kubernetes-helm
    podman
  ];
}
