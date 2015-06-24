clear;
clc;

// Illustration 2.6
// Page: 111

printf('Illustration 2.6 -  Page: 111\n\n');

// solution
//*****Data*****//
// a-UF6    b-air
M_a = 352; // [molecular weight of UF6, gram/mole]
M_b = 29; // [gram/mole]
d = 0.01; // [diameter, m]
x = 0.1; // [length exposed to air stream, m]
v = 1; // [m/s]
Ts = 303; // [surface temperature of solid, K]
P_a = 27; // [vapor pressure of UF6, kPa]
Tb = 325; // [bulk temperature of solid ,K]
P = 101.3; // [kPa]
R = 8.314; // [cubic m.Pa/mole.K]
//*****//

y_a1 = P_a/P; // [mole fraction at point 1]
y_a2 = 0; // [mole fraction at point 2]

// Along the mass-transfer path-cylinder surface (point 1) to bulk air (point 2)
Tavg = (Ts+Tb)/2; // [K]

// At point 1, the gas is saturated with UF6 vapor, while at point 2 the gas is virtually free of UF6
// Therefore
Pavg = (P_a+0)/2; // [average partial pressure, kPa]
y_a = Pavg/P; // [mole fraction of UF6]

Mavg = M_a*y_a+M_b*(1-y_a); // [gram/mole]
row_avg = P*Mavg/(R*Tavg); // [kg/cubic m]

// Parameter for c-O2, d-N2 and a-UF6
yi_c = 0.182;   yi_d = 0.685;  yi_a = 0.133; 
Tc_c = 154.6;   Tc_d = 126.2;  Tc_a = 505.8; // [K]
Pc_c = 50.4;    Pc_d = 33.9;   Pc_a = 46.6;  // [bar]
M_c = 32;       M_d  = 28;     M_a  = 352;  // [gram/mole]
V_c = 73.4;     V_d  = 89.8;  V_a  = 250; // [cubic cm/mole]
Z_c = 0.288;    Z_d  = 0.290;  Z_a  = 0.277;

// From equation 2.52 and 2.53
Tcm = yi_c*Tc_c+yi_d*Tc_d+yi_a*Tc_a; // [K]
Pcm = 10^6*R*Tcm*(yi_c*Z_c+yi_d*Z_d+yi_a*Z_a)/((yi_c*V_c+yi_d*V_d+yi_a*V_a)*100000); // [bar]
M_avg = yi_c*M_c+yi_d*M_d+yi_a*M_a; // [gram/mole]

// From equation 2.50
Em =  0.176*(Tcm/(M_avg^3*Pcm^4))^(1/6); // [uP]^-1

// From equation 2.51
Trm = Tavg/Tcm;
f_Trm = (0.807*Trm^0.618)-(0.357*exp(-0.449*Trm))+(0.340*exp(-4.058*Trm))+0.018; 
// From equation 2.49 
u = f_Trm/Em; // [uP]
u = u*10^-7; // [viscosity, kg/m.s]

Re = d*v*row_avg/u; // [Renoylds number]

// Diffusivity of UF6 vapors in air at 314 K and 1 atm from equation 1.49
D_ab = 0.0904; // [square cm/s]

Sc = u/(row_avg*D_ab*10^-4); // [Schmidt number]

Sh_avg = 0.43 + 0.532*Re^0.5*Sc^0.31; // [Sherwood number]
// From equation 1.7
c = P/(R*Tavg); // [kmole/cubic m]
// From Table 2.1 
F_av = Sh_avg*D_ab*c*10^-4/d; // [kmole/square m.s]

// From equation 2.2
N_avg = F_av*log((1-y_a2)/(1-y_a1)); // [kmole/square m.s]
S = 2*%pi*d^2/4 +%pi*d*x; // [total surface area of the cylinder, square m]

w_a = N_avg*S*M_a; // [rate of sublimation of the solid, kg/s] 
printf("Rate of sublimation of a cylinder of UF6 is %e kg/s\n\n",w_a);