// Exa 5.12
clc;
clear;
close;
// Given data
P1 = 1;// in bar
T1 = 320;// in K
r= 11.6;
Vc= 1;// in m^3 (assumed)
Vs= 10.6*Vc;//in m^3
V1= r*Vc;// in m^3
Gamma= 1.4;
P2= P1*r^Gamma;// in bar
V2= Vc;// in m^3
V3= Vc;// in m^3
V4=1.38*Vc;// in m^3
P3= 1.53*P2;// in bar
P4= P3;// in bar
expansionRatio= V1/V4;
P5= P4/expansionRatio^Gamma;// in bar
V5= r*Vc;// in m^3
W= [P3*(V4-Vc)+(P4*V4-P5*V5)/(Gamma-1)-(P2*V2-P1*V1)/(Gamma-1)]*10^5;// in joule
Pm= W/(Vs*10^4);// in N/cm^2
disp(Pm,"The mean effective pressure of the cycle in N/cm^2")

// Note: The calculation in the book is wrong
