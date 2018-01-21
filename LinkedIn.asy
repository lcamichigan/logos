include crossAndCrescent;
real width = 200, height = 100; size(width, height);
fill(scale(width, height) * shift(-0.5, -0.5) * unitsquare, cmyk(1, 0.6, 0, 0.6));
fill(scale(9) * crossAndCrescentPath(), cmyk(0, 0.18, 1, 0) + evenodd);
