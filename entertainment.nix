{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    monophony
  ];
}
