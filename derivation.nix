{ lib, fetchFromGitHub, python3Packages }:

with python3Packages;

buildPythonApplication rec {
  pname = "vu-server";
  version = "0.1";

  src = fetchFromGitHub {
    owner = "bonds";
    repo = "VU-Server";
    rev = "master";
    sha256 = "Ia7m3hlBEO/t24k7AHFcl8fQXyUxgqwQ1bLMfsgixqQ=";
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
