{ pkgs ? import <nixpkgs> {} }:
with pkgs;
{
  bs-platform4 = import ./build-bs-platform.nix {
    inherit stdenv fetchFromGitHub ninja runCommand nodejs python3;
    version = "4.0.4";
    ocaml-version = "4.02.3";
    src = fetchFromGitHub {
        owner = "BuckleScript";
        repo = "bucklescript";
        rev = "c73360c990acbbc2a7f31bcdcc40f1903a827f6a";
        sha256 = "0x12lgkc3nb9n2vj34hnpzqv6inj4gi00q8524mk0hj101xmx3nm";
        fetchSubmodules = true;
    };
  };
  bs-platform5 = import ./build-bs-platform.nix {
    inherit stdenv fetchFromGitHub ninja runCommand nodejs python3;
    version = "5.2.0";
    ocaml-version = "4.02.3";
    src = fetchFromGitHub {
        owner = "BuckleScript";
        repo = "bucklescript";
        rev = "48f2350886d30b4310472face0c21f618422cdf9";
        sha256 = "0grzbr2ah490v052cp038ri7n5z23n74ic26rdbc69zgp4djzrb3";
        fetchSubmodules = true;
    };
  };
  bs-platform6 = import ./build-bs-platform.nix {
    inherit stdenv fetchFromGitHub ninja runCommand nodejs python3;
    version = "6.2.1";
    ocaml-version = "4.06.1";
    src = fetchFromGitHub {
        owner = "BuckleScript";
        repo = "bucklescript";
        rev = "59357b7a2a5063718a385438e5cb0de7bd3b5398";
        sha256 = "0zx9nq7cik0c60n3rndqfqy3vdbj5lcrx6zcqcz2d60jjxi1z32y";
        fetchSubmodules = true;
    };
  };
  bs-platform7 = import ./build-bs-platform.nix {
    inherit stdenv fetchFromGitHub ninja runCommand nodejs python3;
    version = "7.0.1";
    ocaml-version = "4.06.1";
    src = fetchFromGitHub {
        owner = "BuckleScript";
        repo = "bucklescript";
        rev = "52770839e293ade2bcf187f2639000ca0a9a1d46";
        sha256 = "0s7g2zfhshsilv9zyp0246bypg34d294z27alpwz03ws9608yr7k";
        fetchSubmodules = true;
    };
  };
}
