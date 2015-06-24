clear;
clc;

// Illustration 12.5
// Page: 684

printf('Illustration 12.5 - Page: 684\n\n');

// Solution 

//***Data***//
x1 = 0.025;// [moisture fraction]
x2 = 0.001;// [moisture fraction]
zS = 0.018;// [m]
dp = 2*10^(-4);// [m]
Density_S = 1350;// [kg dry solid/cubic m]
//***********//

X1 = x1/(1-x1);// [kg water/kg dry air]
X2 = x2/(1-x2);// [kg water/kg dry air]
// From Fig 7.5 (Pg 232)
Y1 = 0.0153;// [kg water/kg dry air]
Tempas = 24;// [OC]
Yas = 0.0190;// [kg water/kg dry air]
Gs = 0.24;// [kg dry air/square m.s]
Gav = Gs+(Gs*(Y1+Yas)/2);// [kg dry air/square m.s]
// From Eqn. 12.26:
Nmax = Gs*(Yas-Y1);// [kg evaporated/square m.s]
viscosity_air = 1.8*10^(-5);// [kg/m.s]
Value = integrate('1/(Nmax*(1-exp(-(0.273/dp^0.35)*((dp*Gav/viscosity_air)^0.215)*(Density_S*zS*X)^0.64)))','X',X2,X1);
// From Eqn. 12.3:
thetha = Density_S*zS*Value;// [s]
printf("The time for drying: %f min\n",thetha/60);