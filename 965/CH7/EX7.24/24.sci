clc;
clear all;
disp("Boundary layer thickness")
ta=20;//degree C
U=1.8;//m/s
L=0.6;//m
rho=1.205;//kg/m^3
mu=0.06533/3600;//kg/ms
disp("boundary layer thickness by exact solution : del=5*(v*x/U)^0.5")
disp("at the midpoint of the boundary layer y= del/2 occurs at ")
disp("nu = y*(U/v*x)=2.5")
disp("thus we get u/U =0.736")
disp("m/s",U*0.736,"u =")
ReL=rho*U*L/mu;
delL=5*L/ReL^0.5;
disp("m",delL,"The maximum boundary layer thickness, delL =")
disp("The maximum value of normal component of velocity occurs at the outer edge of the boundary layer where u =U")
//u/U*ReL^0.5=0.86;
u=0.86*U/ReL^0.5;
disp("m/s",u,"the maximum value of normal component of velocity at the trailing edge is ")
