with import <nixpkgs> { };

pkgs.mkShell {
  name = "lauz";
  buildInputs = with pkgs; [
    vscode
    poetry
    python313
  ];
 
  NIXOS_OZONE_WL="1";
}
