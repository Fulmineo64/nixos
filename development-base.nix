{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    brave
    vscodium
    go
    rustdesk
    git
  ];
}
