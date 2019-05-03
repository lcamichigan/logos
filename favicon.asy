include crossAndCrescent;
path[] crossAndCrescent = crossAndCrescentPath();
int[] sizes = {16, 32, 64, 128, 256};
for (int size : sizes) {
  picture pic;
  size(pic, size);
  fill(pic, scale(size) * shift(-0.5, -0.5) * unitsquare, cmyk(1, 0.6, 0, 0.6));
  fill(pic, scale(0.75 / 8 * size) * crossAndCrescent, cmyk(0, 0.18, 1, 0) + evenodd);
  shipout(format('favicon-%d', size), pic);
}
