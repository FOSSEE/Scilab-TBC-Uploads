clear;
clc;

// Example: 1.5
// Page: 7

// Solution

printf("Example: 1.5 - Page: 7\n\n");

//*****Data*****//
Patm = 112;// [kPa]
density = 1200;// [kg/cubic m]
g = 9.81;// [m/sqaure s]
h = 0.62;// [m]
//**************//

P = Patm + (density*g*h/1000);// [kPa]

printf("The absolute pressure within the container is %.3f kPa\n",P);