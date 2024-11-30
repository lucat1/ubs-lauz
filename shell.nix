with import <nixpkgs> { };

pkgs.mkShell {
  name = "lauz";
  buildInputs = with pkgs; [
    vscode
    python313
    (with pyton313Packages; [
      pandas
    ])
  ];
 
  NIXOS_OZONE_WL="1";
}
