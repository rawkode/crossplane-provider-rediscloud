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

    # Linting
    golangci-lint

    # Testing
    kind
    kubectl
    kubernetes-helm
    podman
    
    # For example validation
    python3
    python3Packages.pyyaml
  ];
}
