{ pkgs ? import <nixpkgs> {}
, python ? pkgs.python3Packages
, pygobject ? python.pygobject3
, gtk3 ? pkgs.gtk3
, gettext ? pkgs.gettext
, gstreamer ? pkgs.gst_all_1.gstreamer
, gspell ? pkgs.gspell
, isocodes ? pkgs.isocodes
, chardet ? python.chardet
}:
python.buildPythonApplication {
  pname = "gaupol";
  version = "1.8";

  src = fetchGit {
    url = https://github.com/otsaloma/gaupol.git;
    rev = "83a5362506e71f11d64058b02e73b09e0975e1ca";
  };

  propagatedBuildInputs = [
    pygobject
    gtk3
    gettext
    gstreamer
    gspell
    isocodes
    chardet
  ];
}
