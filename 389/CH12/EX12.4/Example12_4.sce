clear;
clc;

// Illustration 12.4
// Page: 676

printf('Illustration 12.4 - Page: 676\n\n');

// Solution (a)

//***Data***//
// For rectangular pan:
l = 0.7;// [m]
b = 0.7;// [m]
zS = 0.025;// [m]
zM = 0.0008;// [m]
d = 0.1;// [m]
Y1 = 0.01;// [kg water/kg dry air]
TempG = 65;// [OC]
v = 3;// [m/s]
TempR = 120;// [OC]
//*************//

// From Table 7.1: (Pg 234)
vH = (0.00283+(0.00456*Y1))*(TempG+273);// [cubic m/kg dry air]
Density_G = (1+Y1)/vH;// [kg/cubic m]
G = v*Density_G;// [kg/square m.s]
de = 4*d*l/(2*(l+d));// [m]
// From Eqn. 12.20:
hc = 5.90*G^0.71/de^0.29;// [W/square m.K]
// Assume:
e = 0.94;
// Estimate:
TempS = 38;// [OC]
// From Eqn. 12.14:
hR = e*5.729*10^(-8)*((273+TempR)^4-(273+TempS)^4)/((273+TempR)-(273+TempS));
A = l*b;// [square m]
Am = A;// [square m]
As = 4*l*zS;// [square m]
Au = Am+As;// [square m]
// Thermal Coductivities:
kM = 45;// [W/m.K]
kS = 3.5;// [W/m.K]
// By Eqn. 12.16:
Uk = 1/(((1/hc)*(A/Au))+((zM/kM)*(A/Au))+((zS/kS)*(A/Am)));// [W/squre m.K]
// From Table 7.1: (Pg 234)
Cs = 1005+(1884*Y1);// [kJ/kg]
// At estimated 38 OC
lambdaS = 2411.4;// [kJ/kg]
// From Eqn. 12.18:
// (Ys-Y1)*lambdaS*10^3/Cs = ((1+(Uk/hc))*(TempG-Temps))+((hR/hC)*(TempR-TempS))
// On Simplifying:
// Ys = 0.0864-(10.194*10^(-4)*TempS)
// The eqn. is solved simultaneously with the saturated humidity curve of the psychometric chart for the air water mixture.
// From Fig. 12.12: (Pg 677)
Ys = 0.0460;// [kg water/kg dry air]
TempS = 39;// [OC]
// At 39 OC
lambdaS = 2409.7;// [kJ/kg]
// From Eqn. 12.17:
Nc = (((hc+Uk)*(TempG-TempS))+(hR*(TempR-TempS)))/(lambdaS*10^3);// [kg water evaporated/square m.s]
printf("The Evaporation Rate: %e kg/s\n",Nc*A);

// Solution (b)
// When no radiation or conduction of heat through the solid occurs, the drying surface assumes wet bulb temparature of the air.
// From Fig. 12.12 (Pg 677)
TempS = 28.5;// [OC]
Ys = 0.025;// [kg water/kg dry air]
lambdaS = 2435;// [kJ/kg]
// From Eqn. 12.17:
Nc = hc*(TempG-TempS)/(lambdaS*10^3);// [kg/aquare m.s]
printf("The Evaporation Rate: %e kg/s\n",Nc*A);