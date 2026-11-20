{ ... }:

{
  flake.nixosModules.swww =
    { pkgs, ... }:
    {
      hm.systemd.user.services.swww = {
        Unit = {
          Description = "Wayland Wallpaper Daemon";
          PartOf = [ "graphical-session.target" ];
          After = [ "graphical-session.target" ];
          ConditionEnvironment = "WAYLAND_DISPLAY";
        };
        Service = {
          ExecStart = "${pkgs.awww}/bin/awww-daemon";
          Restart = "on-failure";
          RestartSec = 1;
          Type = "simple";
        };
        Install.WantedBy = [ "graphical-session.target" ];
      };
    };
}
