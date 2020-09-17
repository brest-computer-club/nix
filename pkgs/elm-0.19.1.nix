nixPkgs:
let 
  directGZip = import ./helpers/directGZip.nix nixPkgs;
in 
   nixPkgs.stdenv.mkDerivation (directGZip {
      name = "elm";
      sha256 = "0p0m1xn4s4rk73q19fz1bw8qwhm6j3cqkrbq6jbmlwkzn8mzajp4";
      url = "https://github.com/elm/compiler/releases/download/0.19.1/binary-for-linux-64-bit.gz";
    })
