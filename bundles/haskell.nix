nixpkgs:
let 
  ghcide = (import (builtins.fetchTarball "https://github.com/cachix/ghcide-nix/tarball/master") {}).ghcide-ghc865;
in
    with nixpkgs; [ 
      nixpkgs.stack
      nixpkgs.haskell.compiler.ghc865
      ghcide
      nixpkgs.haskellPackages.hie-bios
    ]
