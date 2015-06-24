clear;
clc;

// Illustration 12.6
// Page: 685

printf('Illustration 12.6 - Page: 685\n\n');

// Solution 

//***Data***//
Y1 = 0.01;// [kg water/kg dry air]
Gs = 1.1;// [kg dry air/square m.s]
dia = 13.5/1000;// [m]
l = 13/1000;// [m]
zS = 50/1000;// [m]
Density_S = 600;// [kg dry solid/square m.s]
a = 280;// [square m/cubic m]
//************//

// From Fig 7.5 (Pg 232)
Yas = 0.031;// [kg water/kg dry air]
Gav = Gs+(Gs*(Y1+Yas)/2);// [kg/square m.s]
viscosity_air = 1.9*10^(-5);// [kg/m.s]
Area = (2*%pi*dia^2/4)+(%pi*dia*l);// [square m]
dp = (Area/%pi)^0.5;// [m]
// From Table 3.3 (Pg 74)
Re = dp*Gav/viscosity_air;
e = 1-(dp*a/6);// [fraction voids]
jD = (2.06/e)*Re^(-0.575);
// For air water mixture:
Sc = 0.6;
// From Eqn. 12.33:
kY = jD*Gs/Sc^(2/3);// [kg H2O/square m.s.deltaX]
// From Eqn. 12.30:
NtG = kY*a*zS/Gs;
// From Eqn. 12.25:
Nmax = Gs*(Yas-Y1);// [kg/square m.s]
// From Eqn. 12.31:
N = Nmax*(1-exp(-NtG));// [kg water evaporated/square m.s]
Y2 = (Yas-Y1)*(N/Nmax)+Y1;// [kg water/kg dry air]
// From Fig 7.5 (Pg 232)
Tempas = 33;// [OC]
// From eqn. 12.2:
Rate = N/(Density_S*zS);// [kg H2O/(kg dry solid).s]
printf("Humidity of the exit air: %f kg water/kg dry air\n",Y2);
printf("Temparature of exit air: %d OC\n",Tempas);
printf("Rate of Drying: %e kg H2O/(kg dry solid).s\n",Rate);