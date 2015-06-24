clear;
clc;
printf("\t\t\tExample Number 4.6\n\n\n");
// aluminium plate suddenly  exposed to convection
// illustration4.6
// solution

alpha = 8.4*10^(-5);// [square meter/s] constant
Ts = 200;// [degree celsius] initial temperature of of plate
Te = 70;// [degree celsius] environment temperature 
k = 215;// [W/m degree celsius] heat transfer coefficient of plate
h = 525;// [W/square meter degree celsius] heat transfer coefficient 
x = 0.0125;// [m] depth at which temperature is calculated
t = 60;// [s] time after which plate temperature is calculated
L = 0.025;// [m] thickness of plate
theta_i = Ts-Te;// [degree celsius]
// then 
Z = alpha*t/L^2;
X = k/(h*L);
x_by_L = x/L;
// from figure 4-7(page no.-144-145)
theta_o_by_theta_i = 0.61;
theta_o = theta_o_by_theta_i*theta_i;// [degree celsius]
// from figure 4-10(page no.-149) at x/L = 0.5,
theta_by_theta_o = 0.98;
theta = theta_by_theta_o*theta_o;// [degree celsius]
T = Te+theta;// [degree celsius]
// we compute the energy lost by the slab by using Figure 4-14(page no.-152). For this calculation we require the following properties of aluminium:
rho = 2700;// [kg/cubic meter]
C = 900;// [J/kg degree celsius]
// for figure 4-14(page no.-152) we need 
V = h^2*alpha*t/(k^2);
B = h*L/k;
// from figure 4-14(page no.-152)
Q_by_Qo = 0.41;
// for unit area 
Qo_by_A = rho*C*2*L*theta_i;// [J/square meter]
// so that the heat removed per unit surface area is 
Q_by_A = Qo_by_A*Q_by_Qo;// [J/square meter]
printf("\n\n temperature at a depth of 1.25 cm from one of faces after 1 min of exposure of plate to the environment is %f degree celsius",T);
printf("\n\n energy removed per unit area from the plate in this time is %e J/square meter",Q_by_A);


