{ ... }:

{
  flake.nixosModules.mpv = { ... }: {
    hm.link.".config/mpv" = ./.config/mpv;
  };
}
