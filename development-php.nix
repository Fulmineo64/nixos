{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pkgs.php
	pkgs.apacheHttpd
  ];
}
