clear;
clc;

// Example: 3.3
// Page: 89

printf("Example: 3.3 - Page: 89\n\n");

// Solution

//*****Data*****//
V1 = 6;// [cubic m]
P1 = 500;// [kPa]
R = 0.287;// [kJ/kg K]
//*************//

// Applying the charectarstic equation to the gas initially:
// P1*V1 = m1*R*T1.......................................(i)
// Applying the charectarstic equation to the gas which was left in the vessel after one-fifth of the gas has been removed:
// P2*V2 = m2*R*T2.......................................(ii)
// V2 = V1;
// T2 = T1;
// m2 = (4/5)*m1;
// Eqn (ii) becomes:
// P2*V1 = (4/5)*m1*R*T1..................................(iii)
// Dividing eqn (i) by eqn (iii), we get:
P2 = (4/5)*P1;// [kPa]
printf("The pressure of the remaining air is %d kPa\n",P2);