clear;
clc;

// Example: 1.2
// Page: 5

// Solution

printf("Example: 1.2 - Page: 5\n\n");

//*****Data*****//
m1 = 1.5;// [mass of the body, kg]
m2 = 6*10^(24);// [mass of the Earth, kg]
G = 6.672*10^(-11);// [N.square m/square.kg]
r = 6000*10^(3);// [m]
//************//

// According to Newton's universal law of gravity:
F = G*m1*m2/r^2;// [N]
printf("Gravitational force on the body is %.2f N\n",F);