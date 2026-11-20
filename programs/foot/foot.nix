{ ... }:

{
  flake.nixosModules.foot = { ... }: {
    hm.link.".config/foot" = ./.config/foot;
  };
}
