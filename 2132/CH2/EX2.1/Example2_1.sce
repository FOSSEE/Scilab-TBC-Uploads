//Example 2.1
clc;
clear;
close;

//Given data :
V=10;//in m^3
W=80;//in kN
g=9.81;//gravity accelerat
w_water=9.81;//specific weight of water
format('v',6);
w=W/V;//specific weight in kN/m^3
disp(w,"Specific weight of liquid in kN/m^3 : ");
mass_density=w*1000/g;//kg/m^3
disp(mass_density,"Mass density of liquid in kg/m^3 : ");
specific_gravity=w/w_water;//unitless
disp(specific_gravity,"Specific gravity : ");
