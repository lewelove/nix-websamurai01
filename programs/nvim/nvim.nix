{ ... }:

{
  flake.nixosModules.nvim = { ... }: {
    hm.link.".config/nvim" = ./.config/nvim;
  };
}
