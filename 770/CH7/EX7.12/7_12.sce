clear;
clc;

//Example - 7.12
//Page number - 247
printf("Example - 7.9 and Page number - 244\n\n");

//given
T = 25+273.15;//[K] - Temperature
P = 1;//[atm] - Pressure
P = P*101325;//[Pa]
Tc = 126.2;//[K] - Critical temperature
Pc = 34;//[bar] - Critical pressure
Pc = Pc*10^(5);//[Pa]
R=8.314;//[J/mol*K] - Universal gas constant

a = (27*R^(2)*Tc^(2)/(64*Pc));//[Pa-m^(6)/mol^(2)]
b = (R*Tc)/(8*Pc);//[m^(3)/mol]


// the cubic form of van der Walls equation of state is
// V^(3)-(b+(R*T)/P)*V^(2)+(a/P)*V-(a*b)/P=0
//Solving the cubic equation
deff('[y]=f(V)','y=V^(3)-(b+(R*T)/P)*V^(2)+(a/P)*V-(a*b)/P');
V = fsolve(1,f);
//The above equation has 1 real and 2 imaginary roots. We consider only real root.

Beta = R/((P*V)-(a/V)+((2*a*b)/V^(2)));//[K^(-1)]

K_t = (V-b)/((P*V)-(a/V)+((2*a*b)/V^(2)));//[Pa^(-1)]
K_t = K_t*101325;//[atm^(-1)]

printf(" Beta\t = \t %f K^(-1)\n",Beta);
printf(" K_t\t = \t %f atm^(-1)",K_t);

//For ideal gas, Beta = 1/T = 0.0033354 K^(-1)    and K_t = 1/P = 1 atm^(-1)
// So results obtained are convergent with those obtained assuming ideal gas.

