{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pkgs.andromeda-gtk-theme
    pkgs.candy-icons
  ];
}


