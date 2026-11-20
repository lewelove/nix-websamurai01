{ ... }:

{
  flake.nixosModules.imv = { ... }: {
    hm.link.".config/imv" = ./.config/imv;
  };
}
