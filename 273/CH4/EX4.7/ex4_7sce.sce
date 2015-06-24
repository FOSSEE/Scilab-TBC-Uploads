clc;clear;
//Example 4.7
//electric and magnetic fields in crossed configuration
//given values
B=2*10^-3;//magnetic field in wb/m^2
E=3.4*10^4;//electric field in V/m
m=9.1*10^-31;//in kg
e=1.6*10^-19;//in C
v=E/B;//in m/s
disp(v,'electron speed is:')
R=m*v/(e*B);//in m
disp(R,'radius of circular path (in m) when electric field is switched off')