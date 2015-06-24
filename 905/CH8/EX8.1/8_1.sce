clear;
clc;

// Illustration 8.1
// Page: 479

printf('Illustration 8.1 -  Page: 479\n\n');

// solution
// ****Data****//
P_total = 1; // [bar]
T1 = 320; // [K]
T_c = 562.2; // [K]
P_c = 48.9; // [bar]
A = -6.983;
B = 1.332;
C = -2.629;
D = -3.333;
//*****//

x1 = 1-(T1/T_c);
deff('[y] = f12(P1)','y = log(P1/P_c)-(A*x1+B*x1^1.5+C*x1^3+D*x1^6)/(1-x1)');
P1 = fsolve(.01,f12);// [bar]
printf("Vapor pressure of benzene at 320 K is %f bar\n\n",P1);

M_benzene = 78 // [gram/mole]
printf('Illustration 8.1 (a)\n');

// Solution (a)
// For nitrogen
M_nitrogen = 28; // [gram/mole]
// From equation 8.2
Y = P1/(P_total - P1); //[mole C6H6/ mole N2]
Y_s1 = Y*(M_benzene/M_nitrogen); // [gram C6H6/gram N2]

printf("Absolute humidity of mixture of benzene and nitrogen is %f gram C6H6/gram N2\n\n",Y_s1);

printf('Illustration 8.1 (b)\n');
// Solution (b)
// For carbon dioxide
M_carbondioxide = 44; // [gram/mole]
// From equation 8.2
Y = P1/(P_total - P1); //[mole C6H6/ mole C02]
Y_s2 = Y*(M_benzene/M_carbondioxide); // [gram C6H6/gram CO2]

printf("Absolute humidity of mixture of benzene and carbon dioxide is %f gram C6H6/gram CO2\n",Y_s2);