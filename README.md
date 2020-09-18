# nix

## basic usage 
create a file to set (for example) everything you need for your elm development, say : `elm-shell.nix`

```
{pkgs ? import <nixpkgs> {}}:

let 
  src = builtins.fetchGit {
    url = "https://github.com/brestcc/nix.git";
    ref = "master"; # or pin a specific commit, see https://nixos.org/manual/nix/stable/#builtin-fetchGit
  };
  altPkgs = import src pkgs; 
in 
pkgs.mkShell {
  buildInputs = with pkgs; 
    altPkgs.bundles.elm pkgs # it's a simple list, so it can be manipulated as desired
    ++ [
      neovim # we add an editor
    ];
}
```

start a shell with :
```
nix-shell elm-shell.nix
```
