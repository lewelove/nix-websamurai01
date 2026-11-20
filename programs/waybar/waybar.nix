{ ... }:

{
  flake.nixosModules.waybar = { ... }: {
    hm.link.".config/waybar" = ./.config/waybar;
  };
}
