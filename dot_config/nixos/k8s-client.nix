{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    kubernetes-helm
    cilium-cli
    minikube
    kubectl
    kubectx
    kubectl-view-secret
    kubeseal
    stern
    talosctl
  ];
}

