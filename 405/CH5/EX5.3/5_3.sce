clear;
clc;
printf("\t\t\tExample Number 5.3\n\n\n");
// mass flow and boundary-layer thickness  
// illustration5.3
// solution

Ta = 27+273.15;// [K] air temperature
Pa = 101325;// [Pa] pressure of air
u = 2;// [m/s] air velocity
x1 = 0.2;// [m] distance from the leading edge of plate
x2 = 0.4;// [m] distance from the leading edge of plate
R = 287;// []
mu = 1.85*10^(-5);// [kg/m s] viscosity of air 
// the density of air is calculated from 
rho = Pa/(R*Ta);// [kg/cubic meter] 
// the reynolds number is calculated as
Re_x1 = rho*u*x1/mu;
Re_x2 = rho*u*x2/mu;
// the boundary layer thickness is calculated from equation(5-21)
del_x1 = 4.64*x1/Re_x1^(1/2);// [m]
del_x2 = 4.64*x2/Re_x2^(1/2);// [m]
// to calculate the mass flow which enters the boundary layer from the free stream between x = 0.2 m and x = 0.4 m
// we simply take the difference between the mass flow in the boundary layer at these two x positions.
// at any x position the mass flow in the boundary layer is given by the integral dm = integrate('rho*u_y','y',0,del);
// velocity is given by equation (5-19) u_y = u*[1.5*(y/del)-0.5*(y/del)^(3)]
// after integration we get dm = 5*rho*u*del/8
dm = 5*rho*u*(del_x2-del_x1)/8
printf(" mass flow entering the boundary layer is %e kg/s",dm);

