![Build and populate cache][1]

[![Cachix Cache][2]][3]

[1]: https://github.com/mimvoid/nur-pkgs/workflows/Build%20and%20populate%20cache/badge.svg
[2]: https://img.shields.io/badge/cachix-mimvoid-blue.svg
[3]: https://mimvoid.cachix.org

# NUR Packages

My collection of custom packages and modules for the [NUR][4].

For various reasons, I have not added these packages (yet) to the official [nixpkgs][5] repo. These include the following:

1. They're based on existing packages in nixpkgs or the NUR, such as:
   - Updated versions yet to be merged
   - Minor modifications like substitutions
   - And I haven't quite figured out how to do these with overlays yet...
2. They work, but feel a little hacky and need refinement
3. I just haven't gotten around to it

[4]: https://github.com/nix-community/NUR
[5]: https://github.com/NixOS/nixpkgs

## Setup

- [ ] Add your packages to the [pkgs](./pkgs) directory and to
      [default.nix](./default.nix)
  - Remember to mark the broken packages as `broken = true;` in the `meta`
    attribute, or travis (and consequently caching) will fail!
  - Library functions, modules and overlays go in the respective directories
- [ ] [Add yourself to NUR](https://github.com/nix-community/NUR#how-to-add-your-own-repository)
