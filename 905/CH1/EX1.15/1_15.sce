clear;
clc;

// Illustration 1.15
// Page: 43

printf('Illustration 1.15 - Page:43 \n\n');
// Solution

//*****Data*****//
// Diffusion of A through stagnant B
P_total = 1.0; // [bar]
P_B1 = 0.8; // [bar]
P_B2 = 0.3; // [bar]
//*****//

// Using equation 1.83
P_BM = (P_B2-P_B1)/(log(P_B2/P_B1)); // [bar]
// using the result of Example 1.14, we have
N_A = 0.2; // [mole/square m.s]
N_A = N_A*P_total/P_BM; // [moloe/square m.s]
printf("The molar flux of component A is %f mole/square m.s",N_A);