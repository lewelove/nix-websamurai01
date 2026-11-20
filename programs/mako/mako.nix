{ ... }:

{
  flake.nixosModules.mako = { ... }: {
    hm.link.".config/mako" = ./.config/mako;
  };
}
