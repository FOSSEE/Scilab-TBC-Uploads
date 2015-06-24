clear;
clc;
close;
disp("Exmple 9.4")
Cd=0.5
bm=-20
r=1.25
phi=0.5
chi=1
t=0.02

De=Cd*t*r*(1-(chi/phi)*tand(bm))^(1/2)
disp(De,"Loss of the turbine efficiency (eta0 times) :")