//Example 19.4 // Hall coefficient Hall voltage  
clc;
clear;
//given data :
p=4.83D21;//constant
a=.428D-9;// unil cell side in m
E=.15;// fermi level in eV
k=1.38D-23;// Boltzmann constant
h=6.626D-34;// plank constant in J-s
T=300;// temperature in kelvin
me=9.1D-31;// mass of electron in kg
me1=.014*me;// effective mass in kg
mh=.18*me;// effective mass of hole
I=.1;// current in Amp
B=.1;// magnetic field in tesla
b=1D-3;// width of speciman in m
n=2/a^3;// no. of atoms per unit volume
d=k*T/1.6D-19;// to convert in eV
e=1.6D-19;// charge of electron  
R=1/(n*e);// Hall constant
disp(R,"Hall coefficient for sodium in m3/C")
// in second part InSb
n1=2*((2*%pi*k*T/h^2)^1.5)*((me1*mh)^(3/4))*exp(-1*.15/(2*d));
// formula for concentration in per m3
R1=1/(n1*e);// Hall coefficient in m3/C
V=R*I*B/b;//  Hall  voltage in V
V1=R1*I*B/b// Hall voltage
disp(V,"Hall voltage of sodium")
disp(R1,"Hall coefficient for Insb in m3/C")
disp(V1,"Hall Voltage of Insb")



