{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
    buildInputs = with pkgs; [
        python312
        python312Packages.pip
        python312Packages.virtualenv

        gcc
    ];

    shellHook = ''
        if [ ! -d venv ]; then
            virtualenv venv
            source venv/bin/activate
        else
            source venv/bin/activate
        fi
    '';
}