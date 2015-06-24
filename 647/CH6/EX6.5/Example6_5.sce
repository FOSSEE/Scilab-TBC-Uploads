clear;
clc;

// Example: 6.5
// Page: 206

printf("Example: 6.5 - Page: 206\n\n");

// Solution

// *****Data******//
Tb = -103.9 + 273;// [K]
deff('[P] = f1(T)','P = 10^(-(834.13/T) + 1.75*log10(T) - 8.375*10^(-3)*T + 5.324)');
R = 8.314;// [J/mol K]
//***************//

// From Eqn. 6.60, we get:
// d(ln(P))/dT = deltaH/(R*T^2)
deff('[P] = f2(T)','P = exp(2.303*log10(f1(T)))');
// Differentiating it with respect to T
// d(ln(P))/dT = (834.13*2.303/Tb^2 + 1.75/Tb - 2.303*8.375*10^(-3))
deltaH = R*Tb^2*(834.13*2.303/Tb^2 + 1.75/Tb - 2.303*8.375*10^(-3))/1000;// [kJ/mol]
printf("The enthalpy of vaporisation is %.2f kJ/mol\n",deltaH);