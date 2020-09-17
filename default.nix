nixPkgs:
{
  terraform_0_13_2 = import ./pkgs/terraform-0.13.2.nix nixPkgs;
  elm_0_19_1 = import ./pkgs/elm-0.19.1.nix nixPkgs;

  bundles = {
    elm = import ./bundles/elm.nix;
    networking-tools = import ./bundles/networking-tools.nix;
  };
}
