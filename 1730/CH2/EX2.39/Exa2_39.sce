//Exa2.39
clc;
clear;
close;
format('v',11)
//given data
R_desh=1820;// in M ohm
R_desh=R_desh*10^6;// in ohm
d1=1.5;// in cm
d1=d1*10^-2;// in meter
d2=5;// in cm
d2=d2*10^-2;// in meter
l=3000;// in meter
r1=d1/2;
r2=d2/2;

rho= (2*%pi*l*R_desh)/log(r2/r1);
disp("Resistivity of dielectric is : "+string(rho)+" ohm meter")