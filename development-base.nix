{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true; 

  environment.systemPackages = with pkgs; [
    brave
    vscodium
    go
    rustdesk
    anydesk
    git
  ];

  environment.sessionVariables = {
    GOPATH = "/home/nicholas/go";
    PATH = [
      "/home/nicholas/go/bin"
    ];
  };
}
