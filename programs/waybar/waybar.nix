{ ... }:

{
  flake.nixosModules.waybar = { pkgs, ... }: {
    environment.systemPackages = [ pkgs.waybar ];

    hm.link.".config/waybar" = ./.config/waybar;
  };
}
