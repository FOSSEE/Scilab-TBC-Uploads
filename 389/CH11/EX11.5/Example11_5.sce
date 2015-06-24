clear;
clc;

// Illustration 11.5
// Page: 606

printf('Illustration 11.5 - Page: 606\n\n');

// Solution

//*****Data******//
Vl = 1.1*10^(-4);// [cubic m/s]
Ss = 0.0012;// [kg/s]
Density_p = 1120;// [kg/cubic m]
dp = 8*10^(-4);// [m]
Ds = 2*10^(-11);// [square m/s]
Dl = 7.3*10^(-10);// [square m/s]
m = 0.2;// [(kg Cu2+/cubic m soln)/(kg Cu2+/kg resin)]
T = 1;// [m]
//********************//

Z = T;// [m]
// The particles will be lifted to the top of the vessel.
Z_prime = 0.5;// [m]
viscosity_l = 8.94*10^(-4);// [kg/m.s]
Density_l = 998;// [kg/cubic m]
delta_Density = Density_p-Density_l;// [kg/cubic m]
g = 9.80;// [m/square s]
// From Eqn. 11.23:
Vts = g*dp^2*delta_Density/(18*viscosity_l);
Vm = %pi*T^2*Z/4;// [cubic m]
Vs = Ss/Density_p;// [cubic m/s]
phi_Sm = Vs/(Vs+Vl);// [vol fraction]
// From eqn. 11.24:
Density_m = (phi_Sm*Density_p)+((1-phi_Sm)*Density_l);// [kg/cubic m]
// From Eqn. 11.22:
n = 1;
di = 0.3;// [m]
P = (g*n*Density_m*Vm*Vts)*(phi_Sm^(2/3))*((T/di)^(1/2))*exp((4.35*Z_prime/T)-0.1);// [W]
// To estimate the impeller speed:
// Assume:
Po = 5;
N = (P/(Po*Density_m*di^5))^(1/3);// [r/s]
Re = di^2*N*Density_m/viscosity_l;
// From fig. 6.5: Assumption of Po was correct.
printf("Speed of the impeller: %f r/s\n",N);
vT = (%pi/4)*T^2*Z;// [cubic m]
vL = vT*(1-phi_Sm);
// From Eqn. 11.28:
Rep = (dp^(4/3))*(P/vL)^(1/3)*(Density_l^(2/3)/viscosity_l);
ScL = viscosity_l/(Density_l*Dl);
if  dp<(2/1000)
    // From Eqn. 11.29:
    ShL = 2+(0.47*Rep^0.62*((di/T)^0.17)*ScL^0.36);
else
    // From Eqn. 11.30:
    ShL = 0.222*Rep^(3/4)*ScL^(1/3);
end
ShL = 130.3;// Value wrong in book
kL = ShL*Dl/dp;// [m/s]
// Since the dispersion is uniform throughout the vessel, the residence time for both liquid and solid is same.
thetha = vL*(1-phi_Sm)/Vl;// [s]
// From Fig. 11.27:
abcissa = m*kL*dp/(2*Ds*Density_p);
Parameter = 2*m*kL*thetha/(dp*Density_p);
co = 100*Density_l/10^6;// [kg/cubic m]
EMS = 0.63;
Xo = 0;
// From Eqn. 11.44:
// (1): X1-(EMS/m)*c1 = 0
// Solute balance:
// (2): (Ss*X1)+(vL*c1) = (vL*co)+(Xo*Ss)
a = [1 -(EMS/m);Ss Vl];
b = [0;((Vl*co)+(Xo*Ss))];
soln = a\b;
X1 = soln(1);
c1 = soln(2);
printf("Effluent Cu2+ conc. %f ppm\n",c1*10^(6)/Density_l);