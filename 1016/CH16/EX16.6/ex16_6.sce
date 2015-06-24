clc;clear;
//Example 16.6

//given data
E=0.51;//kinetic energy in MeV
R=0.15;//radius in m
e=1.6*10^-19;//the charge on electron in C
mo=9.12*10^-31;//mass of electron in kg
c=3*10^8;//speed of light in m/s

//calculation
Eo=E;
m=mo*(1+(E/Eo));
b=sqrt(1-(mo/m)^2);
v=b*c;
B=mo*v/(e*R);
disp(B,'magnetic field intensity')