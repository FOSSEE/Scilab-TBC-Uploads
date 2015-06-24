// Exa 8.16
clc;
clear;
close;
// Given data
H2= 0.4;// in m^3
CH= 0.425;// in m^3
C2H4= 0.0253;// in m^3
C4H8= 0.0127;// in m^3
CO= 0.075;// in m^3
O2_vol= 0.5*H2 + 2*CH + 3*C2H4 + 6*C4H8 + 0.5*CO;// in m^3
Air_vol= O2_vol/0.21;// in m^3
disp(Air_vol,"The volume of air required for complete combustion in m^3 is");
actualAirSupplied= 1.3*Air_vol;// in m^3
disp(actualAirSupplied,"The actual quantity of air supplied in m^3 is : ")
