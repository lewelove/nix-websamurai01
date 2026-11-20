{ ... }:

{
  flake.nixosModules.fuzzel = { ... }: {
    hm.link.".config/fuzzel" = ./.config/fuzzel;
  };
}
