clear;
clc;

d=2e-2;
l=3;
rho=60;

//(a)
R=(rho/(2 * %pi * l)) * log (4* l / d);
mprintf("\n(a) Earthing resistance = %.2f ohm", R)

//(b)
r= rho / (2 * %pi * R);
mprintf("\n(b) Radius of hemspherical electrode = %.3f m", r)
