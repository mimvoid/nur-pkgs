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

  arttime = pkgs.callPackage ./pkgs/arttime {  };
  cortile = pkgs.callPackage ./pkgs/cortile {  };

  leggie = pkgs.callPackage ./pkgs/fonts/leggie {  };
  limelight = pkgs.callPackage ./pkgs/fonts/limelight {  };
  ma-shan-zheng = pkgs.callPackage ./pkgs/fonts/ma-shan-zheng {  };

  composition-helper = pkgs.callPackage ./pkgs/krita/composition-helper {  };
  gpl-palettes = pkgs.callPackage ./pkgs/krita/gpl-palettes {  };
  reference-tabs-docker = pkgs.callPackage ./pkgs/krita/reference-tabs-docker {  };
  timer-watch = pkgs.callPackage ./pkgs/krita/timer-watch {  };

  yazi-bookmarks = pkgs.callPackage ./pkgs/yazi/bookmarks {  };
  yazi-exifaudio = pkgs.callPackage ./pkgs/yazi/exifaudio {  };
  yazi-full-border = pkgs.callPackage ./pkgs/yazi/full-border {  };
  yazi-max-preview = pkgs.callPackage ./pkgs/yazi/max-preview {  };

  zsh-help = pkgs.callPackage ./pkgs/zsh-help {  };
}
