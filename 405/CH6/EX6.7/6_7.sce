clear;
clc;
printf("\t\t\tExample Number 6.7\n\n\n");
// airflow across isothermal cylinder
// illustration6.7
// solution

p = 101325;// [Pa] pressure of air
Ta = 35+273.15;// [K] temperature of air 
d = 0.05;// [m] diameter of tube 
R = 287;// [] gas constant
u = 50;// [m/s] velocity of air
Tc = 150+273.15;// [degree celsius] cylinder temperature
// we first find the reynolds number and then find the applicable constants from table(6-2) for use with equation (6-17) 
// the properties of air are evaluated at the film temperature:
Tf = (Ta+Tc)/2;// [K]
rho_f = p/(R*Tf);// [kg/cubic meter]
mu_f = 2.14*10^(-5);// [kg/m s]
k_f = 0.0312;// [W/m degree celsius]
Pr_f = 0.695;// prandtl number
Re_f = rho_f*u*d/mu_f;// reynolds number
// from table (6-2) table
C = 0.0266;
n = 0.805;
// so from equation (6-17)
h = C*(Re_f)^(n)*(Pr_f)^(1/3)*k_f/d;// [W/square meter degree celsius] heat transfer coefficient
// the heat transfer per unit length is 
q_by_L = h*%pi*d*(Tc-Ta);// [W/m]
printf("heat loss per unit length of cylinder is %f W/m",q_by_L);

