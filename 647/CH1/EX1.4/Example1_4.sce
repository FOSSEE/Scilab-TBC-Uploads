clear;
clc;

// Example: 1.4
// Page: 6

// Solution

printf("Example: 1.4 - Page: 6\n\n");

//*****Data*****//
h = 40;// [cm]
density = 14.02;// [g/cubic cm]
g = 9.792;// [m/square s]
//*************//

P = h*density*g/1000;// [N/square cm]
P = P*10;// [kPa]

printf("The absolute pressure is %.3f kPa\n",P);