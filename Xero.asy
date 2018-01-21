include crossAndCrescent;
real size = 140; size(size);
fill(circle((0, 0), 0.5 * size), cmyk(1, 0.6, 0, 0.6));
fill(scale(12) * crossAndCrescentPath(), cmyk(0, 0.18, 1, 0) + evenodd);
