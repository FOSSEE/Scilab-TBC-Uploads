clear;
clc;

// Illustration 1.14
// Page: 39

printf('Illustration 1.14 - Page:39 \n\n');
// Solution

//*****Data*****
//  Binary gaseous mixture of components A and B
P = 1; // [bar]
T = 300; // [K]
R = 8.314; // [cubic m.Pa/mole.K]
delta = 1; // [mm]
y_A1 = 0.7;
y_A2 = 0.2;
D_AB = 0.1; // [square cm/s]
//*****//

// Using equation 1.72
N_A = (D_AB*10^-4)*(P*10^5)*(y_A1-y_A2)/(R*T*delta*10^-3);
printf("The molar flux of component A is %f mole/square m.s",N_A);  