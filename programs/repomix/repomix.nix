{ ... }:

{
  flake.nixosModules.repomix = { ... }: {
    hm.link.".config/repomix" = ./.config/repomix;
  };
}
