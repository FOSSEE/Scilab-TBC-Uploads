clc;clear;
//Example 16.4

//given data
mo=9.1*10^-31;//mass of electron in kg
m=1.67*10^-27;//mass of proton in kg
c=3*10^8;//speed of light in m/s
E=1;//given energy in MeV

//calculations
Eo=mo*c^2/(1.6*10^-13);
mbymo=1+(E/Eo);
disp(mbymo,'Ratio for electron');
Eo=m*c^2/(1.6*10^-13);
mbymo=1+(E/Eo);
disp(mbymo,'Ratio for proton')