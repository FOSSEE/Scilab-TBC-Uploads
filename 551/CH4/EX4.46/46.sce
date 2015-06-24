clc
h1=240; //kJ/kg
h2=192; //kJ/kg
dZ=20; //m
g=9.81; //m/s^2
Q=(h2-h1)+dZ*g/1000;

disp("heat transfer = ")
disp(-Q)
disp("kJ/kg")