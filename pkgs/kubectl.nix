nixPkgs: 
version:
let 
  download = import ./helpers/directBinary.nix nixPkgs;
  sha = {
    "1.19.4" = "0gx67qggxa6d11w5fdk8pkxhag9hi1k1ks4z2c0dc1qjzkqk7wvx";
  };
in 
   nixPkgs.stdenv.mkDerivation (download {
      name = "kubectl";
      sha256 = sha.${version};
      url = "https://storage.googleapis.com/kubernetes-release/release/v${version}/bin/linux/amd64/kubectl";
    })
