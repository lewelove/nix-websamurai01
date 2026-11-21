{ config, pkgs, ... }:

{
  hardware.graphics = {
    enable = true;
    enable32Bit = true;

    extraPackages = with pkgs; [
      nvidia-vaapi-driver
    ];
    extraPackages32 = with pkgs.pkgsi686Linux; [
      nvidia-vaapi-driver
    ];
  };

  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia-container-toolkit.enable = true;

  hardware.nvidia = {
    modesetting.enable = true;

    powerManagement.enable = false;
    powerManagement.finegrained = false;

    open = false;
    nvidiaSettings = true;

    # nixpkgs' 580 LTSB branch (latest 580.x in nixpkgs)
    package = config.boot.kernelPackages.nvidiaPackages.legacy_580;
  };

  environment.sessionVariables = {
    DOCKER_HOST = "unix:///run/user/1000/podman/podman.sock";
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1";

    LIBVA_DRIVER_NAME = "nvidia";
    XDG_SESSION_TYPE = "wayland";
    GBM_BACKEND = "nvidia-drm";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";

    __GL_SHADER_DISK_CACHE_SIZE = "10737418240";
    __GL_SHADER_DISK_CACHE_SKIP_CLEANUP = "1";

    MOZ_ENABLE_WAYLAND = "1";
    MOZ_DISABLE_RDD_SANDBOX = "1";
    NVD_BACKEND = "direct";

    XCURSOR_THEME = "Adwaita";
    XCURSOR_SIZE = "24";

    XDG_CURRENT_DESKTOP = "Hyprland";
    XDG_MENU_PREFIX = "plasma-";
    GTK_USE_PORTAL = "1";
    QT_QPA_PLATFORMTHEME = "qt6ct";

    EDITOR = "micro";
    TERMINAL = "alacritty";

    PATH = [
      "$HOME/.commands"
      "$HOME/.scripts"
    ];

    XDG_DATA_DIRS = [
      "$HOME/.applications"
    ];
  };
}
