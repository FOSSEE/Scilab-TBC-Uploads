clear;
clc;

// Example: 10.13
// Page: 418

printf("Example: 10.13 - Page: 418\n\n");

// Solution

//*****Data******//
// 1: iso - butanol
// 2: iso - propanol
T = 50 + 273;// [K]
x1 = 0.3;
V1 = 65.2;// [cubic cm/mol]
V2 = 15.34;// [cubic cm/mol]
// For Wilson equation:
a12 = 300.55;// [cal/mol]
a21 = 1520.32;// [cal/mol]
// For NTRL equation:
b12 = 685.21;// [cal/mol]
b21 = 1210.21;// [cal/mol]
alpha = 0.552;
R = 2;// [cal/mol K]
//******************//

x2 = 1 - x1;
// A: Estimation of activity coeffecient using Wilson equation:
// From Eqn. 10.65:
A12 = (V2/V1)*exp(-a12/(R*T));
// From Eqn. 10.66:
A21 = (V1/V2)*exp(-a21/(R*T));
// From Eqn. 10.67:
gama1 = exp(-log(x1 + A12*x2) + x2*((A12/(x1 + A12*x2)) - (A21/(A21*x1 + x2))));
// From Eqn. 10.68:
gama2 = exp(-log(x2 + A21*x1) - x1*((A12/(x1 + A12*x2)) - (A21/(A21*x1 + x2))));
printf("Wilson equation\n");
printf("Activity Coeffecient of iso - butanol is %.3f\n",gama1);
printf("Activity Coeffecient of iso - propanol is %.3f\n",gama2);
printf("\n");

// A: Estimation of activity coeffecient using NTRL equation:
t12 = b12/(R*T);
t21 = b21/(R*T);
G12 = exp(-alpha*t12);
G21 = exp(-alpha*t21);
// From Eqn. 10.70:
gama1 = exp((x2^2)*(t21*(G21/(x1 + x2*G21))^2 + (t12*G12/(x2 + x1*G12)^2)));
// From Eqn. 10.71:
gama2 = exp((x1^2)*(t12*(G12/(x2 + x1*G12))^2 + (t21*G21/(x1 + x2*G21)^2)));
printf("NTRL equation\n");
printf("Activity Coeffecient of iso - butanol is %.3f\n",gama1);
printf("Activity Coeffecient of iso - propanol is %.3f\n",gama2);