{ pkgs, ... }:
{
  packages = with pkgs; [
    tectonic
    texlive.combined.scheme-full
    (texlive.withPackages (ps: [ ps.latexmk ]))
    ghostscript  # PostScript and PDF processing
    poppler_utils  # PDF utilities like pdftotext
    python3  # Optional: For scripting or automation
  ];

  # Optional: Set environment variables
  env = {
    TEXMFHOME = "$HOME/.texmf";
  };
}