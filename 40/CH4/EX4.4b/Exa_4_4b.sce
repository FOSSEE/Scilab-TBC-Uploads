//Pole-Zero plots
z=%z;
az=z^4+4.25*z^2+1;
bz=z^4;
poles=roots(bz)
zeroes=roots(az)
h=az/bz
plzr(h)