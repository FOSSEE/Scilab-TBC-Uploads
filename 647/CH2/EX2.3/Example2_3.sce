clear;
clc;

// Example: 2.3
// Page: 40

printf("Example: 2.3 - Page: 40\n\n");

// Solution

//*****Data*****//
W = -3;// [hp]
Q = -4000;// [kJ/h]
//**************//

// The work done by the stirrer on the system is given by
W = W*745.7;// [W]
// The amount of heat transferred to the suroundings can be expressed in terms of J/s:
Q = Q*1000/3600;// [J/s]
// From the first law of thermodynamics:
// Q = delta_U - W
delta_U = Q - W;// [J/s]
printf("The change in the internal energy of the system would be %.2f J/s\n",delta_U);