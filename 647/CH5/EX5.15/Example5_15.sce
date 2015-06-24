clear;
clc;

// Example: 5.15
// Page: 169

printf("Example: 5.15 - Page: 169\n\n");

// Solution

//*****Data*****//
m1 = 5;// [kg]
m2 = 20;// [kg]
C = 4.2;// [kJ/kg K]
T1 = 350;// [K]
T2 = 250;// [K]
//**************//

// Suppose the final temperature is T
deff('[y] = f(T)','y = m1*C*(T1 - T) - m2*C*(T - T2)');
T = fsolve(7,f);// [K]
// Change in entropy of Hot Water:
deltaS1 = m1*C*integrate('(1/T)','T',T1,T);// [kJ/K]
// Change in Entopy of Hot Water:
deltaS2 = m2*C*integrate('(1/T)','T',T2,T);// [kJ/K]
deltaS = deltaS1 + deltaS2;// [kJ/K]
printf("Change in Entropy is %.3f kJ/K",deltaS);