//Exa 1.14
clc;
clear;
close
// given data
T1=300;//in degree C
T2=50;//in degree C
x2=2*10^-2;// thickness of boiler wall in m
tc2=58;// thermal conductivity of wall in W/mk
x3=0.5*10^-2;// thickness of outer surface of the  wall in m
tc3=116*10^-3;// thermal conductivity of outer surface of the wall in W/mk
R1=2.3*10^-3;// in k/W
R2=x2/tc2;
R3=x3/tc3;
sigmaR=R1+R2+R3;// Total Resistance
q=(T1-T2)/sigmaR;
disp(q,"Heat transfer rate per unit area in W/m^2 :")
// Note: Answer in the book is wrong
