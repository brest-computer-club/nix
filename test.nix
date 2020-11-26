let                                
  pkgs = import (builtins.fetchTarball {                                
    name = "nixos-20.03";                                
    url = "https://github.com/NixOS/nixpkgs/archive/20.03.tar.gz";                                
    sha256 = "0182ys095dfx02vl2a20j1hz92dx3mfgz2a6fhn31bqlp1wa8hlq";                                
  }) {};                                
  altPkgs = (import ./pkgs/kubectl.nix) pkgs ;                                
in                                
pkgs.mkShell {                                
  buildInputs = with pkgs;                                
     [(altPkgs "1.19.3")];                                
}      
