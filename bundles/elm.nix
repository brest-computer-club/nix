nixpkgs:
let 
  altPkgs = import ../default.nix nixpkgs;
in
    with altPkgs; [ 
      altPkgs.elm_0_19_1
      nixpkgs.elmPackages.elm-language-server
      nixpkgs.elmPackages.elm-format
      nixpkgs.elmPackages.elm-test
      nixpkgs.elmPackages.elm-live
    ]

