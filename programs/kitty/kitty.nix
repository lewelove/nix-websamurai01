{ ... }:

{
  flake.nixosModules.kitty = { ... }: {
    hm.link.".config/kitty" = ./.config/kitty;
  };
}
