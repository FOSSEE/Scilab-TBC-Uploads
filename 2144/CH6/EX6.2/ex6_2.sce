// Exa 6.2
clc;
clear;
close;
// Given data
P = 1.013;// atm pressure in bar
P = P * 10^5;// in N/m^2
area= 1000*10^-4;// in m^2
L_w = 1000;// in N
P_L = L_w/area;// Pressure due to load in N/m^2
PressOnPiston = P_L+P;// absolute pressure to piston in N/m^2
a = 10^-3;// in m^2
disp("Energy required to pump 1 kg of water at 0°C into the cylinder in joules is:")
U = PressOnPiston*a;// in Joules
disp(U);
// Part (b)
absPressure= 111.3*10^3;// in N/m^2
increaseInVol= (1.02-1)*10^-3;// in m^3
disp("Energy required to effect the change in volume in joules is : ")
u_f= increaseInVol*absPressure;// in joules
disp(u_f);
// Part (c)
increaseInVol= (1.52-0.001);// in m^3
ExternalWorkDone= absPressure*increaseInVol;// in joules
disp(ExternalWorkDone*10^-3,"External work done in kJ is :")
