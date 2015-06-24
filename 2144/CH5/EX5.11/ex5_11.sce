// Exa 5.11
clc;
clear;
close;
// Given data
r = 10;
Gamma = 1.4;
P1 = 1;// in bar
P2 = 1 * ((r)^(Gamma));// in bar
P3 = 40;// in bar
P4 = P3;// in bar
T1 = 80;// in degree C
T1 = T1+273;// in K
T2 = T1 * ((r)^(Gamma-1));// in K
T3 = (P3/P2)*T2;// in K
T4 = 1700;// in degree C
T4 = T4 + 273;// in K
Vc= 1;// in m^3(assumed)
V4= Vc*T4/T3;
V1= 10*Vc;// volume at beginning of compression in m^3
Vs= V1-Vc;// in m^3
PercentageStroke= (V4-Vc)/Vs*100;// in %
disp(PercentageStroke,"Percentage of stroke at which heat reception must stop is : ")
r= V1/V4;
P5= P4/r^Gamma;// in bar
disp("Ratio of work done during expansion to that done during compression is ")
ratio= (P4*V4-P5*V1)/(P2*Vc-P1*V1);
disp(ratio)
