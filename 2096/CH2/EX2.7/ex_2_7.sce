
//Example 2.7 // the beem speed and the deflection sensitivity
clc;
clear;
close;
//given data :
Va=2500; // in volts
ld=.015; // in m
d=.005; // in m
L=.5; // in m
m=9.109*10^-31; // in kg
e=1.602*10^-19;
v=sqrt((2*e*Va)/m);
S=((L*ld)/(2*d*Va))*10^3;
disp(v,"the beem speed,v(m/s)")
disp(S,"deflection sensitivity,S(mm/V) = ")
