clc;
clear all;
disp("Boundary layer thickness")

x=1.2;//m distance from the leading edge of plate
v=15.4*10^(-6);//m^2/s  kinematic viscocity
U=2.8;//m/s velocity of air


Re=U*x/v;// Reynold's number
disp("Blasius solution")
delta1=5*x*1000/(Re)^0.5;//mm
disp("mm",delta1,"Maximum thickness of boundary layer =")

Cfx1=0.664/(Re)^0.5;
disp(Cfx1,"drag coefficient =")

disp("Approximate solution")
delta2=4.64*x*1000/(Re)^0.5;//mm
disp("mm",delta2,"Maximum thickness of boundary layer =")
Cfx2=0.646/(Re)^0.5;
disp(Cfx2,"drag coefficient =")

e1=(1-delta2/delta1)*100;
disp("%",e1,"Deviation for delta =")

e2=(1-Cfx2/Cfx1)*100;
disp("%",e2,"Deviation for Drag coefficient =")
