#!/usr/bin/env bash

# Create a PNG of a maize cross and crescent on a blue circle.
asy -outformat png -command '
include crossAndCrescent;
real size = 240; size(size);
fill(circle((0, 0), 0.5 * size), cmyk(1, 0.6, 0, 0.6));
fill(scale(21) * crossAndCrescentPath(), cmyk(0, 0.18, 1, 0) + evenodd);
' .png

# Create a PDF file of the header text.
xetex -fmt=xelatex -interaction=batchmode MailChimp.tex

# Rasterize the PDF file to a PNG file.
convert -density 306 MailChimp.pdf MailChimp.png

# Combine the PNG files.
convert -page 1200x350+480+36 .png -page +$(((600 - $(identify -format %w MailChimp.png) / 2)))+311 MailChimp.png -background transparent -flatten MailChimp.png

# Clean up.
rm -f .png MailChimp.aux MailChimp.log MailChimp.pdf
