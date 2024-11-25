{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    php
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
