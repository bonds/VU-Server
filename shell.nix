with import <nixpkgs> {};
with pkgs.python3Packages;

buildPythonPackage rec {
  name = "mypackage";
  src = "./.";
  propagatedBuildInputs = [ 
    python3 
    pip 
    tornado
    numpy
    pillow
    requests
    argparse
    pyyaml
    ruamel-yaml
    pyserial
    installer
  ];
}
