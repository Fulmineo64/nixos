{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    andromeda-gtk-theme
    candy-icons
  ];
}


