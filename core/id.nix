{ ... }:

let
  id = {
    user = "hash";
    email = "reifzisdlefux@gmail.com";
    repoPath = "/home/hash/nix-tree";
  };
in
{
  flake.nixosModules.id = { ... }: {
    _module.args.id = id;
  };
}
