

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 7 Example # 7.8 ")

//Temperature of plate in degree C
Tplate = 60;
//Temperature of jet in degree C
T = 20;
//Thermal conductivity in W/mK
k = 0.0265;
//Dynamic viscosity in Ns/m2
mu = 0.00001912;
//Prandtl number
Pr = 0.71;
//Density in kg/m3
rho = 1.092;
//Mass flow rate in kg/s
m = 0.008;
//Width of jet in m
w = 3/1000;
//Length of jet in m
l = 20/1000;
//Velocity of jet in m/s
v = 10;
//Exit distance in m
z = 0.01;
//Width given for plate in m
L = 0.04;
//Reynolds number
Re = ((rho*v)*w)/mu;

//From Eq. (7.68) with x= 0.02 m, z =0.01 m, and w= 0.003 m
//Nusselt number
Nu = 11.2;
// ! L.33: mtlb(d) can be replaced by d() or d whether d is an M-file or not.
//Heat transfer coefficient in W/m2K
h = (Nu*k)/mtlb(w);

disp("Heat transfer rate from the plate in W is")
//Heat transfer rate from the plate in W
q = ((h*L)*l)*(Tplate-T)
