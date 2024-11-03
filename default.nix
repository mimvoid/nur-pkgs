# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage

{
  pkgs ? import <nixpkgs> { },
}:

{
  lib = import ./lib { inherit pkgs; };
  modules = import ./modules;
  overlays = import ./overlays;

  leggie = pkgs.callPackage ./pkgs/fonts/leggie {  };
  limelight = pkgs.callPackage ./pkgs/fonts/limelight {  };
  ma-shan-zheng = pkgs.callPackage ./pkgs/fonts/ma-shan-zheng {  };
}
