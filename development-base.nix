{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pkgs.brave
    pkgs.vscodium
	pkgs.go
	pkgs.discord
	pkgs.rustdesk
	pkgs.git
  ];
}
