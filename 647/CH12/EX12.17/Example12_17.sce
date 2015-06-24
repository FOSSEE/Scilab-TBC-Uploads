clear;
clc;

// Example: 12.17
// Page: 501

printf("Example: 12.17 - Page: 501\n\n");

// Solution

//*****Data******//
// Reaction: A(s) ---------> B(s) + C(g)
deff('[deltaG] = f1(T)','deltaG = 85000 - 213.73*T + 6.71*T*log(T) - 0.00028*T^2');// [J]
T1 = 400;// [K]
T2 = 700;// [K]
Pc = 1;// [bar]
R = 8.314;// [J/mol K]
//**************//

deltaG_400 = f1(400);// [J]
deltaG_700 = f1(700);// [J]
K_400 = exp(-(deltaG_400/(R*T1)));// [bar]
K_700 = exp(-(deltaG_700/(R*T2)));// [bar]
printf("The decomposition pressure is %.4f bar at 400 K\n",K_400);
printf("The decomposition pressure is %.2f bar at 700 K\n",K_700);

// Equilibrium constant for solid - gas reaction is:
// K = aB*aC/aA = aC = fC = Pc
deff('[y] = f2(T)','y = Pc - exp(-f1(T)/(R*T))');
T = fsolve(900,f2);// [K]
printf("The decomposition temperature is %.3f K",T);