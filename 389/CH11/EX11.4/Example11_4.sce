clear;
clc;

// Illustration 11.4
// Page: 604

printf('Illustration 11.4 - Page: 604\n\n');

//****Data*****//
// b: kerosene c:water
// c:kg water/cubic m liquid
Density_l = 783;// [kg/cubic m]
viscosity_l = 1.7*10^(-3);// [kg/m.s]
Mb = 200;// [kg/kmol]
Density_p = 881;// [kg/cubic m]
m = 0.522;// [(kg water/cubic m kerosene)/(kg water/kg gel)]
Xo = 0;// [kg H2O/kg gel]
//**************//

// Solution (a)
co = Density_l*4*10^(-5);// [kg water/cubic m]
c1 = Density_l*5*10^(-6);// [kg water/cubic m]
// For Ss minimum:
X1 = c1/m;// [kg H2O/kg gel]
// By Water Balance:
SsminByVl = (co-c1)/(X1-Xo);// [kg gel/cubic m kerosene]
printf("Minimum Solid/Liquid ratio used: %f kg gel/cubic m kerosene",SsminByVl);
printf("\n");

// Solution (b)
// Basis: 1 batch,1.7 cubic m kerosene
Vl = 1.7;// [cubic m]
Ss = 16*1.7;// [kg gel]
V = Ss/Density_p;// [Xol. solid, cubic m]
Vt = 1.7+V;// [Total batch volume, cubic m]
// Take Z = T
T = (Vt*4/%pi)^(1/3);// [m]
// To allow for the  adequate free board:
h = 1.75;// [Vessel height,m]
// Use a six-blade disk impeller.
// From Fig. 11.26:
// dp corresponding to 14 mesh:
dp = 1.4/1000;// [m]
TBydi1 = 2;
Value1 = (Density_p-Density_l)/Density_l;
// From Fig. 11.26:
TBydi2 = 4.4;
TBydiAv = (TBydi1+TBydi2)/2;
di = T/TBydiAv;// [m]
fr = 0.6;// [settled volume fraction of solids]
Vs = V/fr;// [cubic m]
depth = Vs/((%pi*(T^2))/4);// [m]
// The depth of settled solid is negligible.
// Locate the turbine 150mm from the bottom of the tank.
C = 0.150;// [m]

// Power:
// Use the sufficient agitator power to lift the solids to 0.6 m above the bottom of the vessel.
Z_prime = 0.6-C;// [m]
// The properties of the slurry in 0.6 m above the bottom of the vessel.
Vm = 0.6*%pi*T^2/4;// [square m]
phi_Sm = V/Vm;// [vol fraction solid]
// From Eqn. 11.24:
Density_m = (phi_Sm*Density_p)+((1-phi_Sm)*Density_l);// [kg/cubic m]
// From Eqn. 11.25:
phi_Ss = 0.8;
viscosity_m = viscosity_l/(1-(phi_Sm/phi_Ss))^1.8;// [kg/m.s]
g = 9.81;// [m/s^2]
// From Eqn. 11.23:
delta_Density = Density_p-Density_l;// [kg/cubic m]
Vts = g*dp^2*delta_Density/(18*viscosity_l);// [m/s]
// From Eqn. 11.22:
n = 1;
P = (g*n*Density_m*Vm*Vts)*(phi_Sm^(2/3))*(TBydiAv^(1/2))*exp((4.35*Z_prime/T)-0.1);// [W]
// Assume:
Po = 5;
N = (P/(Po*Density_m*di^5))^(1/3);// [r/s]
// Use:
N1 = 2;// [r/s]
Re = di^2*N1*Density_m/viscosity_m;
// From fig. 6.5: Po = 5
// Hence our assumption was right.
printf("Power delivered to the slurry: %f W\n",P*(N1/N)^3);
printf("Power to the motor will be larger, depending on the efficiency of the motor and speed reducer.\n");

// Mass transfer: 
// From Eqn. 11.28:
Rep = (dp^(4/3))*(P/Vl)^(1/3)*(Density_l^(2/3)/viscosity_l);
// From Eqn. 2.44:
Temp = 298;// [K]
phi = 1;
Va = 0.0756;// [Chapter 2 notation]
Dl = ((117.3*10^(-18))*((phi*Mb)^0.5)*Temp)/(viscosity_l*(Va^(0.6)));
ScL = viscosity_l/(Density_l*Dl);
if  dp<(2/1000)
    // From Eqn. 11.29:
    ShL = 2+(0.47*Rep^0.62*(1/TBydiAv^0.17)*ScL^0.36);
else
    // From Eqn. 11.30:
    ShL = 0.222*Rep^(3/4)*ScL^(1/3);
end
kL = ShL*Dl/dp;// [m/s]
apS = (%pi*dp^2)/(%pi*dp^3*Density_p/6);
apL = apS*16;// [square m/cubic m liquid]
Ratio = Ss/(Vl*m);
// From Eqn. 11.40:
thetha = log((co/c1)/(1+(1/Ratio)-(1/Ratio)*(co/c1)))/((1+(1/Ratio))*kL*apL);
printf("Contacting Time required: %f min\n",thetha/60);