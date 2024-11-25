{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pkgs.php
  ];

  services.nginx = {
    enable = true;
    virtualHosts.localhost = {
      locations."/" = {
        root = "/var/www";
      };
    };
  };
}
