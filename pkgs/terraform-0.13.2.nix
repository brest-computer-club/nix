nixPkgs:
let 
  hashicorpReleases = import ./helpers/hashicorpReleases.nix nixPkgs;
in 
  nixPkgs.stdenv.mkDerivation (hashicorpReleases {
      name = "terraform";
      sha256 = "6c1c6440c5cb199e85926aea65773450564f501fddcd7876f453ba95b45ba746";
      version = "0.13.2";
    })

