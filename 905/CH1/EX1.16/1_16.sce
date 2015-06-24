clear;
clc;

// Illustration 1.16
// Page: 44

printf('Illustration 1.16 - Page:44 \n\n');
// Solution

//*****Data*****//
// Nickel Carbonyl-A    carbon monoxide-B
T = 323; // [K]
P = 1; // [atm]
R = 8.314; // [cubic m.Pa/mole.K]
y_A1 = 1.0;
y_A2 = 0.5;
delta = 0.625; // [mm]
D_AB = 20; // [square mm/s]
//*****//

// The stoichiometry of the reaction determines the relation between the fluxes: from equation (1-59), N_B = - 4N_A and N_A + N_B = -3NA
// Molar flux fraction si_A = N_A/(N_A+N_B) = N_A/(-3*N_A) = -1/3
si_A = -1/3;
// Using equation 1.78
N_A = si_A*(D_AB*10^-6*P*10^5*log((si_A-y_A2)/(si_A-y_A1))/(R*T*delta*10^-3));
printf("The molar flux of component A is %f mole/square m.s",N_A);
