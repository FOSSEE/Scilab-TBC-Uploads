clear;
clc;

// Example: 12.13
// Page: 492

printf("Example: 12.13 - Page: 492\n\n");

// Solution

//*****Data******//
// Reaction: PCl5 = PCl3 + Cl2
T = 250;// [OC]
Kp = 1.8;
e = 0.5;
//**************//

// Basis: 1 mol of PCl5
// At Equilibrium:
n_PCl5 = 1 - e;
n_PCl3 = e;
n_Cl2 = e;
n_total = n_PCl5 + n_PCl3 + n_Cl2;
// Patrial Pressures:
// P_PCl5 = (n_PCl5/n_total)*P
// P_PCl3 = (n_PCl3/n_total)*P
// P_Cl2 = (n_Cl2/n_total)*P
deff('[y] = f(P)','y = Kp - ((n_PCl3/n_total)*P)*((n_Cl2/n_total)*P)/((n_PCl5/n_total)*P)');
P = fsolve(7,f);// [atm]
printf("Total Pressure Required for 50 %% conversion of PCl5 is %.1f atm",P);