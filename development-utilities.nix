# Non-crucial system utilities

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    peek # GIF screenshot tool
    baobab # Disk usage analyzer
  ];
}


