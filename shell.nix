{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
    buildInputs = with pkgs; [
        python310
        python310Packages.pip
        python310Packages.virtualenv

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