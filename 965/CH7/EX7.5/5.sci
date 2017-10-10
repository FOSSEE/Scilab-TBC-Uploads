clc;
clear all;
disp("Boundary layer thickness")
//uU=X
//y/delta=Y
//X=2*Y-Y^2;
L=1.1;//m length of plate
w=0.9;// m width of plate
Re=2*10^5;// Reynold's number
v=0.15*10^(-4);//m^2/s stokes kinematic viscocity
U=12;//m/s velocity ofair
x=Re*v/U;
disp("m",x,"Maximum distance from the leading edge upto which laminar boundary layer exists, x =")

delta=5.48*x*1000/(Re)^0.5;//mm
disp("mm",delta,"Maximum thickness of boundary layer =")

