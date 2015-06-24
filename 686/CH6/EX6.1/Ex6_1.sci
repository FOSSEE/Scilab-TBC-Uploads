clc();
clear;

//*****Data*****//
x = 4/12;// [thickness of plate, inch]
v = 33;// [fps]
n = 15.4*10^(-5);// [kinematic viscosity, feet^2/s]
//************//

Re = v*x/n;// [Reynold's number]
delta = 4.64*x*12/sqrt(Re);// [Boundary layer thickness ,ft]
printf("Boundary layer thickness at 4 in. distance is %.4f in.",delta);