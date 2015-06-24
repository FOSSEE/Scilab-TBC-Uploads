//example 3.4

clear;
clc;

//given:
disp("C7H16(l) + 11O2(g) -> 7CO2(g) + 8H2O(l)");
n=-4;//change in no. of moles when reaction proceeds from reactants to products
T=298;//temperature of the process [K]
R=8.314;//universal gas constant [J/K/mol]
Qv=-4800;//heat energy at constant volume [KJ]


//to find change in enthalpy of the process:
U=Qv;//change in internal energy of system [KJ]
H=U+n*R*0.001*T;//change in enthalpy of the system[KJ]
printf("the change in enthalpy of system is %f KJ",H);

