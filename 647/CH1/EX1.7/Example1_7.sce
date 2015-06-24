clear;
clc;

// Example: 1.7
// Page: 9

// Solution

printf("Example: 1.7 - Page: 9\n\n");

//*****Data*****//
P = 560*10^3;// [Pa]
Vinit = 3;// [cubic m]
Vfinal = 5;// [cubic m]
Wext = 210*10^3;// [J]
//*************//

W = P*(Vfinal - Vinit);// [J]
// Again the system receives 210 kJ of work from the external agent.
W = W - Wext;// [J]

printf("Actual Work done by the system is %.1e J\n",W);