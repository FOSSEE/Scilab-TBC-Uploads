clear;
clc;

// Illustration 6.4
// Page: 183

printf('Illustration 6.4 - Page: 183\n\n');

// solution

//****Data****//
//From Illustrtion 6.3:
G = 0.100;// [kmol/s]
Density_G = 0.679;// [kg/cubic m]
q = 5*10^(-3);// [cubic m/s]
Va = 3.827;// [m/s]
z = 1.063;// [m]
L = 0.25;// [kmol/s]
hL = 0.0106;// [m]
hW = 0.05;// [m]
Z = 0.824;// [m]
E = 0.05;
ya = 0.18;// [mole fraction methanol]

// a:CH3OH b:H2O
Ma = 32;// [kg/kmol]
Mb = 18;// [kg/kmol]
// From Chapter 2:
ScG = 0.865;
Dl = 5.94*10^(-9);// [square m/s]
// From Eqn. 6.61:
NtG = (0.776+(4.57*hW)-(0.238*Va*Density_G^0.5)+(104.6*q/Z))/ScG^0.5;
DE = ((3.93*10^(-3))+(0.0171*Va)+(3.67*q/Z)+(0.1800*hW))^2;// [square m/s]
thethaL = hL*z*Z/q;// [s]
NtL = 40000*Dl^0.5*((0.213*Va*Density_G^0.5)+0.15)*thethaL;
// For 15 mass% methanol:
xa = (15/Ma)/((15/Ma)+(85/Mb));
// From Fig 6.23 (Pg 184)
mAC = -(NtL*L)/(NtG*G);// [Slope of AC line]
meqb = 2.50;// [slope of equilibrium line]
// From Eqn. 6.52:
NtoG = 1/((1/NtG)+(meqb*G/L)*(1/NtL));
// From Eqn. 6.51:
EOG = 1-exp(-NtoG);
// From Eqn. 6.59:
Pe = Z^2/(DE*thethaL);
// From Eqn. 6.58:
eta = (Pe/2)*((1+(4*meqb*G*EOG/(L*Pe)))^0.5-1);
// From Eqn. 6.57:
EMG = EOG*(((1-exp(-(eta+Pe)))/((eta+Pe)*(1+(eta+Pe)/eta)))+(exp(eta)-1)/(eta*(1+eta/(eta+Pe))));
// From Eqn. 6.60:
EMGE = EMG/(1+(EMG*E/(1-E)));
printf("Effeciency of Sieve trays: %f",EMGE);