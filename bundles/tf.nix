nixPkgs:
let 
  altPkgs = import ../default.nix nixPkgs;
in
    with altPkgs; [ 
      altPkgs.terraform_0_13_2 
    ]

