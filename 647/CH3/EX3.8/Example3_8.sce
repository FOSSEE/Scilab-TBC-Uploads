clear;
clc;

// Example: 3.8
// Page: 101

printf("Example: 3.8 - Page: 101\n\n");

// Solution

//*****Data*****//
T = 500;// [K]
P = 8*10^6;// [Pa]
R = 8.314;// [J/mol K]
//*************//

// Solution (a)
// By ideal gas equation of state:
printf("Ideal Equation of State\n")
Vm = R*T/P;// [cubic m/mol]
printf("Molar Volume of gas is %.3e cubic m/mol\n",Vm);
printf("\n");

// Solution (b)
// By Virial Equation of State:
printf("Virial Equation of State\n");
B = -0.265*10^(-3);// [cubic m/mol]
C = 0.3025*10^(-7);// [m^6/square mol]
deff('[y] = f(Vm)','y = (P*Vm/(R*T)) - 1 -(B/Vm) - (C/Vm^2)');
Vm = fsolve(Vm,f);
printf("Molar Volume of gas is %.2e cubic m/mol\n",Vm);