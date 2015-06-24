clear;
clc;

// Example: 2.4
// Page: 41

printf("Example: 2.4 - Page: 41\n\n");

// Solution

//*****Data*****//
// From Fig. 2.4 (Page: 41)
// For process A-1-B:
Q1 = 60;// [kJ]
W1 = 35;// [kJ]
// For process A-2-B:
W2 = 50;// [kJ]
// For process B-3-A:
W3 = -70;// [kJ]
//************//

// For process A-1-B:
// The internal energy of the process A-1-B can be estimated as:
// Q = delta_U + W
delta_U = Q1 - W1;// [kJ]
// For process A-2-B:
Q2 = delta_U + W2;// [kJ]
// For process B-3-A:
Q3 = -delta_U + W3;// [kJ]
printf("The amount of heat transferred from the system to the surroundings during process B-3-A is %d kJ\n",-Q3);