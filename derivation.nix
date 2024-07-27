{ lib, fetchFromGitHub, python3Packages }:

with python3Packages;

buildPythonApplication rec {
  pname = "vu-server";
  version = "0.1";
  src = fetchFromGitHub {
    owner = "SasaKaranovic";
    repo = "VU-Server";
    rev = "v20240329";
    sha256 = "K2oJrqgNGRus5bvYHdhtyDQeHvCbW+fAlQLMn00Ovco=";
  };
  doCheck = false;
  
  propagatedBuildInputs = [ 
    python
    pip
    tornado
    numpy
    pillow
    requests
    pyyaml
    ruamel-yaml
    pyserial
    installer
  ];
}
