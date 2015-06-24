clear;
clc;

// Example: 3.5
// Page: 95

printf("Example: 3.5 - Page: 95\n\n");

// Solution

//*****Data*****//
m = 1.373;// [kg]
P = 1.95*10^(6);// [Pa]
V = 0.1;// [cubic m]
a = 422.546*10^(-3);// [cubic m/square mol]
b = 37*10^(-6);// [cubic m/mol]
M = 17*10^(-3);// [kg/mol]
R = 8.314;// [J/mol K]
//****************//

n = m/M;// [moles]
Vm = V/n;// [molar volume, cubic m]
// Applying Van der Waals equation of state:
T = (P + (a/Vm^2))*((Vm - b)/R);// [K]
printf("The temperature at which ammonia exists in the cylinder is %.1f K\n",T)