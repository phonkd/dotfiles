{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    go
  ];
  services.pulseaudio.zeroconf.publish.enable = true;
}
