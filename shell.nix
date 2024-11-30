with import <nixpkgs> { };

pkgs.mkShell {
  name = "lauz";
  buildInputs = with pkgs; [
    vscode
    poetry
    python313
  ];
 
  NIXOS_OZONE_WL="1";
  LD_LIBRARY_PATH = "${pkgs.stdenv.cc.cc.lib}/lib/:/run/opengl-driver/lib/";
}
