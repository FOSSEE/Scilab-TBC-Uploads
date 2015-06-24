// Example 2.3
clear all;
clc;
// Given data
me = 9.1095*10^(-28);                     // Mass of electron in grams
c = 2.9979*10^10;                         // Speed of light in vacuum in cm/sec
// Calculation
rest_mass = me*c^2;
// Result
printf('\n Rest mass energy of electron = %5.4E ergs\n',rest_mass);
disp('Expressing the result in joules')
// 1 Joule = 10^(-7)ergs
rest_mass_j = rest_mass*10^(-7);
printf('\n Rest mass energy of electron = %5.4E joules\n',rest_mass_j);
disp('Expressing the result in MeV')
// 1 MeV = 1.6022*10^(-13)joules
rest_mass_mev = rest_mass_j/(1.6022*10^(-13));
printf('\n Rest mass energy of electron = %5.4f MeV\n',rest_mass_mev);
