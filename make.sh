#!/bin/bash
paper=SocialProfileOverlays
latex $paper -interaction=nonstopmode
bibtex $paper
latex $paper -interaction=nonstopmode
latex $paper -interaction=nonstopmode
dvips -t letter $paper.dvi
ps2pdf $paper.ps
xpdf $paper.pdf
