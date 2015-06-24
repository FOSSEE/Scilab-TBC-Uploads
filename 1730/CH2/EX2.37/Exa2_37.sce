//Exa2.37
clc;
clear;
close;
format('v',5)
// Formula R=rho*l/a
//putting value for copper wire
R=2;// in ohm
l=100;//in meter
rho=1.7*10^-8;// (for copper)
a=rho*l/R;//in meter
a=a*10^6;// in mm
// Formula a=%pi/4*d^2
d_copper=sqrt(a*4/%pi); //  (d_copper is diameter for copper)

// Formula R=rho*l/a
//putting value for Aluminium wire
R=2;// in ohm
l=100;//in meter
rho=2.8*10^-8;// (for aluminium)
a=rho*l/R;//in meter
a=a*10^6;// in mm
// Formula a=%pi/4*d^2
d_aluminium=sqrt(a*4/%pi); //  (d_aluminium is diameter for aluminium)
DiaRatio=d_aluminium/d_copper; //  (DiaRatio is ratio of diameter of aluminium and copper)
disp("The diameter of the aluminium wire is "+string(DiaRatio)+" times that of copper wire");

