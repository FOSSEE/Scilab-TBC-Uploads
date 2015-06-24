clear;
clc;

// Illustration 7.2:
// Page: 223

printf('Illustration 7.2 - Page: 223\n\n');
printf('Illustration 7.2 (b)\n\n');

// Solution (b)

// At 100 OC,
PH2O = 760;// [Vapour pressure of water, mm of Hg]
// From Fig. 7.2 (Pg 224)
// At this value,
PC6H6 = 1400;// [Vapour pressure of benzene, mm of Hg]
printf("Vapour Pressure of benzene at 100 OC is %d mm of Hg\n\n", PC6H6);

printf('Illustration 7.2 (c)\n\n');

// Solution (c)

// Reference: H20
// At 25 OC
m = 0.775;
Mr = 18.02;// [kg/kmol]
lambdar = 2443000;// [N/m.kg]
M = 78.05;// [kg/kmol]
// From Eqn. 7.6:
lambda = m*lambdar*Mr/M;// [N/m.kg]
printf("Latent Heat of Vaporization at 25 OC is %f kN/m.kg\n",lambda/1000);