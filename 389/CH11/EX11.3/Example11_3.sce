clear;
clc;

// Illustration 11.3
// Page: 602

printf('Illustration 11.3 - Page: 602\n\n');

// Solution

//***Data***//
T = 1; //[m]
di = 0.203;// [m]
n = 1;// [for one impeller]
Density_S = 2300;// [kg/cubic m]
Density_p = 2300;// [kg/cubic m]
C = 0.150;// [m]
S = 50;// [kg]
g = 9.807;// [m/s]
dp = 8*10^(-4);// [m]
N = 8.33; //[r/s]
Temp=25;// [OC]
//*************//

// Assume:
Po = 5;
viscosity_L = 8.94*10^(-4);// [kg/m.s]
Density_L = 998;// [kg/cubic m]
delta_Density = Density_S-Density_L;// [kg/cubic m]
// By Eqn. 11.23:
Vts = g*dp^2*delta_Density/(18*viscosity_L);// [m/s]
// By defn. of power number:
// P = Po*Density_m*di^5*Ni^3
// vm = %pi*T^2*(Z+C)/4
// Solid Volume = S/Density_p;
// If these are substituted in Eqn. 11.22
deff('[y] = f(Z)','y = (((Z+C)^(1/3))*exp(4.35*Z/(T-0.1)))-((1.0839*Po*di^(11/2)*N^3*Density_p^(2/3))/(g*Vts*T^(7/6)*S^(2/3)))');
Z = fsolve(7,f);// [m]
phi_Sm = 4*S/(%pi*T^2*(Z+C)*Density_p);
Density_m = (phi_Sm*Density_p)+((1-phi_Sm)*Density_L);// [kg/cubic m]
phi_Ss = 0.6;
viscosity_m = viscosity_L/(1-(phi_Sm/phi_Ss))^1.8;// [kg/m.s]
Re = di^2*N*Density_m/viscosity_m;
P = Po*Density_m*N^3*di^5;// [W]
printf("Agitator Power required: %f W\n",P);