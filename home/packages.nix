{ pkgs }:

{
  home.packages = with pkgs; [
    awscli2
    azure-cli
    circleci-cli
    discord
    doppler
    drone-cli
    httpie
    go-jsonnet
    kind
    lazydocker
    lens
    postman
    pulumi-bin
    rg
    slack
    spotify
    terraform
  ];
}

