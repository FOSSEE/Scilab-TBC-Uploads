//Example 3.7 // energy consumption
clc;
clear;
close;
//given data :
a=500;// electrolytic cells
I=6000;//in A
t=40;//in hour/week
Z=32.81*10^-8*3600;//in kg/A-h
V=0.25;// in volts
Ah=a*I*(t*52);// total number of ampere hour per annum
Ao=Z*Ah*10^-3;// annual output in tonnes
Ea=Ah*V*10^-3;// energy consumed per annum in kWh
Et=Ea/Ao;
disp(Et,"energy consumption,Et(kWh/tonne) = ")
