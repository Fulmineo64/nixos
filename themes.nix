{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    andromeda-gtk-theme # Main theme
    candy-icons # Icon theme
  ];
}


