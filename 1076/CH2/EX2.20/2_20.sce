clear;
clc;

dia=26.88e-3;
d=45e-2;
d1=15.25;

r=dia/2;

GMR= 1.09 * (r * d*d*d)^(.25);
GMD=(d1* d1 * (2*d1))^(1/3);

C= 0.02412 / log10 (GMD/GMR);
mprintf("C= %.4f e-6 F/km", C);
