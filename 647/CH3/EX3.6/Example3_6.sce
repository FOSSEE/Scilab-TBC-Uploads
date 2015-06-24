clear;
clc;

// Example: 3.6
// Page: 96

printf("Example: 3.6 - Page: 96\n\n");

// Solution

//*****Data*****//
P = 15*10^5;// [Pa]
T = 773;// [K]
R = 8.314;// [J/mol K]
//**************//

// Solution (a)
printf("Ideal Equation of State\n")
// Applying ideal Eqn. of State:
Vm = R*T/P;// [cubic m/mol]
printf("Molar Volume of the gas is %.3e cubic m/mol\n",Vm);
printf("\n");

// Solution (b)
printf("Van der Wall Equation of State\n");
a = 0.2303;// [Nm^4/square mol]
b = 4.3073*10^(-5);// [cubic m/mol]
deff('[y] = f1(Vm)','y = P - (R*T/(Vm-b)) + (a/Vm^2)');
Vm = fsolve(Vm,f1);// [cubic m/mol]
printf("Molar Volume of the gas is %.3e cubic m/mol\n",Vm);
printf("\n");

//Solution (c)
printf("Virial Equation of State\n");
// Z = 1 + B/V
// (P*V/(R*T)) = (1 + B/V)
// V^2 - V*R*T/P - B*R*T/P = 0
B = 1.3697*10^(-5);// [cubic m/mol]
deff('[y] = f2(Vm)','y = Vm^2 - (Vm*R*T/P) - (B*R*T/P)');
Vm = fsolve(7,f2);// [cubic m/mol]
printf("Molar Volume of the gas is %.3e cubic m/mol\n",Vm);
printf("\n");

// Solution (d)
printf("Redlich Kwong Equation of State\n");
Tc = 190.6;// [K]
Pc = 45.99*10^5;// [Pa]
a = 0.4278*R^2*Tc^2.5/Pc;// [N/m^4 square mol]
b = 0.0867*R*Tc/Pc;// [cubic m/mol]
deff('[y] = f3(Vm)','y = P - (R*T/(Vm - b)) + (a/((T^0.5)*Vm*(Vm+b)))');
Vm = fsolve(Vm,f3);// [cubic m/mol]
printf("Molar Volume of the gas is %.3e cubic m/mol\n",Vm);