{ ... }:

{
  flake.nixosModules.rmpc = { ... }: {
    hm.link.".config/rmpc" = ./.config/rmpc;
  };
}
