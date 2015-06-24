clear;
clc;
printf("\t\t\tExample Number 4.10\n\n\n");
// heat loss for finite-length cylinder 
// illustration4.10
// solution

d = 0.05;// [m] diameter of aluminium cylinder
l = 0.1;// [m] length of aluminium cylinder  
Ti = 200;// [degree celsius] initial temperature of of cylinder
Te = 70;// [degree celsius] environment temperature
k = 215;// [W/m degree celsius] heat transfer coefficient of plate
h = 525;// [W/square meter degree celsius] convection heat transfer coefficient 
alpha = 8.4*10^(-5);// [square meter/s] constant
x1 = 0.00625;// [m] distance at which temperature is calculated from end
t = 60;// [s] time after which temperature is measured
r = 0.0125;// [m] radius at which temperature is calculated
// we first calculate the dimensionless heat-loss ratio for the infinite plate and infinite cylinder which make up the multidimensional body
// for the plate we have 
L = 0.05;// [m]
A = h*L/k;
B = h^(2)*alpha*t/k^(2);
// from figure (4-14), for the plate, we read 
Q_by_Q_o_plate = 0.22;
// for the cylinder 
r_o = 0.025;// [m]
// so we calculate 
C = h*r_o/k;
// and from figure(4-15) we have 
Q_by_Q_o_cyl = 0.55;
// the two heat ratios may be inserted in equation(4-22) to give 
Q_by_Q_o_tot = Q_by_Q_o_plate+Q_by_Q_o_cyl*(1-Q_by_Q_o_plate);
c = 896;// [J/kg degree celsius] specific heat of aluminium
rho = 2707;// [kg/cubic meter] density of aluminium
V = %pi*r_o^(2)*l;// [cubic meter]
Qo = rho*c*V*(Ti-Te);// [J]
Q = Qo*Q_by_Q_o_tot;// [J] the actual heat loss in the 1-minute 
printf(" the actual heat loss in the 1-minute  is %f kJ",Q/1000);














