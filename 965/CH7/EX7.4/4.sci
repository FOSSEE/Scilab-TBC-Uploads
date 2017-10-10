clc;
clear all;
disp("Boundary layer thickness")
//uU=X
//y/delta=Y
//X=2*Y-Y^2;
L=1.5;//m length of plate
w=1;// m width of plate
v=0.12;// m/s velocity of water
mu=10^(-3);// N-s/m^2
U=0.12;//m/s free stream velocity
rho=1000;//kg/m^3 density of water
ReL=rho*U*L/mu;
delta=5.48*L*1000/(ReL)^0.5;//mm
disp("mm",delta,"thickness of boundary layer =")
Cf=1.46/((ReL)^0.5);// coefficent of drag
disp(Cf,"Coefficient of drag =")

