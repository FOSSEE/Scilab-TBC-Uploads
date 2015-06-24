clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-16.5 Page No.365\n');
W=3500;
V=73;
g=32.2;
V=50*5280/3600;
V=round(V);

//Kinetic energy to be absorbed
KE=W*V^2/(2*g);

mprintf('\n Kinetic energy to be absorbed = %f ft-lb.',KE);

//Temperature rise
Uf=KE;
Wb=40;
c=93;
deltaT=Uf/(Wb*c);

mprintf('\n Temperature rise = %f deg.',deltaT);

//Stopping time
a=20;
t=V/a;

mprintf('\n Stopping time = %f sec.',t);

//Frictional power
t=round(t*10)/10;
fhp=Uf/(550*t);

mprintf('\n Frictional power = %f hp.',fhp)
