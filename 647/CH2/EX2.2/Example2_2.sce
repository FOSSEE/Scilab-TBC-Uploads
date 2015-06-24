clear;
clc;

// Example: 2.2
// Page: 40

printf("Example: 2.2 - Page: 40\n\n");

// Solution

//*****Data*****//
U1 = 1000;// [kJ]
Q = -600; // [kJ]
W = -100;// [kJ]
//************//

// The system is considered to be a closed system. No mass transfer takes place across the system. The tank is rigid. 
// So, the kinetic and the potential energies is zero.
// Therefore:
// delta_E = delta_U + delta_PE + delta_KE
// delta_E = delta_U
// From the first law of thermodynamics:
// Q = delta_U + W
// delta_U = Q - W
// U2 - U1 = Q - W
U2 = U1 + Q - W;// [kJ]
printf("The final internal energy of the fluid is %d kJ\n",U2);