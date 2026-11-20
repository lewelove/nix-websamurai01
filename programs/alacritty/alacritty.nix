{ ... }:

{
  flake.nixosModules.alacritty = { ... }: {
    hm.link.".config/alacritty" = ./.config/alacritty;
  };
}
