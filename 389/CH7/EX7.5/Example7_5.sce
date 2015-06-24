clear;
clc;

// Illustration 7.5
// Page: 228

printf('Illustration 7.5 - Page: 228\n\n');

printf('Illustration 7.5 (a)\n\n');
// solution(a)

//****Data****//
// A = benzene vapour; B = Nitrogen Gas
P = 1;// [atm]
//*****//

MA = 78.05;// [kg/kmol]
MB = 28.02;// [kg/kmol]
// Since gas is saturated, from Fig. 7.2 (Pg 224):
pA = 275/760;// [atm]
Y = pA/(P-pA);// [kmol benzene/kmol nitrogen]
Y_prime = Y*(MA/MB);// [kg benzene/kg nitrogen]
printf("The concentration of benzene is %f kg benzene/kg nitrogen\n\n",Y_prime);

printf('Illustration 7.5 (b)\n\n');
// solution(b)

// A = benzene vapour; B = CO2
MA = 78.05;// [kg/kmol]
MB = 44.01;// [kg/kmol]
// Since gas is saturated, from Fig. 7.2:
pA = 275/760;// [atm]
Y = pA/(P-pA);// [kmol benzene/kmol CO2]
Y_prime = Y*(MA/MB);// [kg benzene/kg CO2]
printf("The concentration of benzene is %f kg benzene/kg CO2\n",Y_prime);