clear;
clc;

//Example - 10.21
//Page number - 362
printf("Example - 10.21 and Page number - 362\n\n");

//Given
P = 2.76*10^(6);//[N/m^(2)] - Pressure
T = 310.93;//[K] - Temperature
R = 8.314;//[J/mol*K] - Universal gas constant

// For n-butane
Tc = 425.18;//[K] - Critical temperature
Pc = 37.97;//[bar] - Critical pressure
Pc = Pc*10^(5);//[Pa]
w = 0.193;
den = 0.61;//[g/cm^(3)]
mol_wt = 58;//[g/mol] - Molecular weight of butane

// log(P_sat) = 15.7374 - 2151.63/(T-36.24)
P_sat = exp(15.7374 - 2151.63/(T-36.24));//[mm Hg]
P_sat = (P_sat/760)*101325;//[N/m^(2)]

//(1)
// Let us determine the second virial coefficient at 310.93 K
Tr = T/Tc;// Reduced temperature
B_0 = 0.083-(0.422/(Tr)^(1.6));
B_1 = 0.139-(0.172/(Tr)^(4.2));
//We know,(B*Pc)/(R*Tc) = B_0 + (w*B_1)
B = ((B_0+(w*B_1))*(R*Tc))/Pc;//[m^(3)/mol]

// Fugacity under saturated conditions is given by
// log(f_sat/P_sat) = (B*P_sat)/(R*T)
f_sat = P_sat*(exp((B*P_sat)/(R*T)));//[N/m^(2)]

// The molar volume is given by
V_liq = (1/(den*1000))*(mol_wt/1000);//[m^(3)/mol]

f = f_sat*exp(V_liq*(P-P_sat)/(R*T));

printf(" (1).The fugacity of n-butane is %e N/m^(2)\n\n",f);

//(2)
// For van der Walls equation of state
a = (27*R^(2)*Tc^(2))/(64*Pc);//[Pa-m^(6)/mol^(2)]
b = (R*Tc)/(8*Pc);//[m^(3)/mol]

// The cubic form of van der Walls equation of state is given by,
// V^(3) - (b + (R*T)/P)*V^(2) + (a/P)*V - (a*b)/P = 0

// At 100 C and 1 atm 
deff('[y]=f(V)','y=V^(3)-(b+(R*T)/P)*V^(2)+(a/P)*V-(a*b)/P');
V_1 = fsolve(0.1,f);
V_1 = fsolve(10,f);
V_1 = fsolve(100,f);
// The above equation has only 1 real root, other two roots are imaginary
V = V_1;//[m^(3)/mol]

// log(f/P) = log((R*T)/(P*(V-b))) + b/(V-b) -(2*a)/(R*T*V)
f_2 = P*(exp(log((R*T)/(P*(V-b))) + b/(V-b) -(2*a)/(R*T*V)));

printf(" (2).The fugacity of n-butane is %e N/m^(2)\n\n",f_2);


