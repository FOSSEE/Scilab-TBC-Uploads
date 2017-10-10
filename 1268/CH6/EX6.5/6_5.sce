clc;
disp("Example 6.5")
d=3e-4 // diameter in m
particleD=2800 // inkg/m^3
waterD=1000 // in kg/m^3
mew= 0.001 // viscosity in kg/ms
K=d*(((waterD*9.81*(particleD-waterD))/(mew*mew))^(1/3))
Re= d*waterD/mew
f=18.5/(Re^0.6)
U=(((4*9.81*(particleD-waterD)*d)/(3*waterD*f))^0.5)^(10/7)
disp(U)
