{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    nativeBuildInputs = with pkgs.buildPackages; [
        git
        go
        hugo
        toybox
    ];

    # Configure custom prompt
    shellHook = ''
        PROMPT_DIRTRIM=2
        PS1='\[\e[92m\]\w\[\e[0m\]\$ '
        clear
    '';
}
