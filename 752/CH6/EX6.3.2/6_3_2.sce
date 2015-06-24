clc;
// page no 200
// prob no 6.3.2
// RC phase shift oscillator
// all resistors are in Kohm
f=800;R0=18;
// R>>Ro should be chosen to minimize the effect of Ro on frequency. A number of values for R can be tried, and it will be found that R=100Kohm is reasonable.
R=100;
c=1/(2*%pi*f*R*sqrt(6+(4*R0/R)))*10^9;// C in pF
disp('pF',c,+'The value of capacitor is ');