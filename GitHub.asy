include crossAndCrescent;
real size = 360; size(size);
fill(scale(size) * shift(-0.5, -0.5) * unitsquare, cmyk(1, 0.6, 0, 0.6));
fill(scale(30) * crossAndCrescentPath(), cmyk(0, 0.18, 1, 0) + evenodd);
