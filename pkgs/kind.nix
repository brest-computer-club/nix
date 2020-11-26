nixPkgs: 
version:
let 
  download = import ./helpers/directBinary.nix nixPkgs;
  sha = {
    "0.9.0" = "1j0da1qqg4r34bb6i0rkywn3sh2pqqqzvdjidbc954a7rbh419im";
  };
in 
   nixPkgs.stdenv.mkDerivation (download {
      name = "kind";
      sha256 = sha.${version};
      url = "https://kind.sigs.k8s.io/dl/v${version}/kind-linux-amd64";
    })
