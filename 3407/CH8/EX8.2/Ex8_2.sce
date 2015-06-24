clear;
clc;
funcprot(0);

//given data
r = 1.5;//operating pressure ratio
K1 = 1.44*10^-5;
K2 = 2410;
K3 = 4.59*10^-6;
T01 = 400;//in K
D2 = 72.5;//rotor inlet diamete in mm
D3_av = 34.4;//rotor meaan outlet diameter in mm
b = 20.1;//rotor outlet annulus width in mm
zetaN = 0.065;//enthalpy loss coefficient
alpha2 = 71;//in deg
beta3_av = 53;//in deg
Cp = 1005;//inJ/(kg.K)
gamma = 1.4;

//Calculations
N = K2*sqrt(T01);
U2 = %pi*N*D2/(60*1000)
delW = U2^2;
delh = Cp*T01*(1-(1/r)^((gamma-1)/gamma));
eff_ts = delW/(delh);
delW_act = K3*K2*%pi*T01/(30*K1);
eff_ov = delW_act/delh;
zetaR = (2*((1/eff_ts)-1) - (zetaN/sin(alpha2*%pi/180)))*((D2/D3_av)^2)*(sin(beta3_av*%pi/180))^2 - (cos(beta3_av*%pi/180))^2;
r3 = 0.5*(D3_av-b)*10^-3;
w3_w2av_min = (D3_av/D2)*tan(alpha2*%pi/180)*((2*r3/D3_av)^2 + (1/tan(beta3_av*%pi/180))^2)^0.5;
w3_w2av = (D3_av/D2)*tan(alpha2*%pi/180)*(1+((1/tan(beta3_av*%pi/180))^2))^0.5;

//Results
printf('The total-to-static efficiency = %.2f percentage.',eff_ts*100);
printf('\n The overall efficiency = %.2f percentage.',eff_ov*100);
printf('\n The rotor enthalpy loss coefficient = %.3f',zetaR);
printf('\n The rotor relative velocity ratio = %.2f',w3_w2av);


//there are small errors in the answers given in textbook
