{ ... }:

{
  flake.nixosModules.xremap = { ... }: {
    hm.link.".config/xremap" = ./.config/xremap;
  };
}
