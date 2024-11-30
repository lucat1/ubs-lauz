with import <nixpkgs> { allowUnfree = true; };

pkgs.mkShell {
  name = "lauz";
  buildInputs = with pkgs; [
    vscode
    (poetry.override { python3 = pkgs.python312; })
  ];
 
  NIXOS_OZONE_WL="1";
  LD_LIBRARY_PATH = "${pkgs.stdenv.cc.cc.lib}/lib/:/run/opengl-driver/lib/";
}
