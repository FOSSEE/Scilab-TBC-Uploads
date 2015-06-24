clear;
clc;

//Example - 3.4
//Page number - 85
printf("Example - 3.4 and Page number - 85\n\n");

// Given
T = 300;//[K] - Temperature
P1 = 1;//[bar] - Initial pressure
P1 = P1*10^(5);//[N/m^(2)]
P2 = 8;//[bar] - Final pressure
P2 = P2*10^(5);//[N/m^(2)]
R = 8.314;//[J/mol*K] - Universal gas constant
Tc = 126.2;//[K] - Critical temperature
Pc = 34;//[bar] - Critical pressure
Pc = Pc*10^(5);//[N/m^(2)]
w = 0.038;//  Acentric factor

// w = integral(Pdv)
// Z = 1 + (B/V)
// (P*V)/(R*T) = 1 + (B/V)
// P = (R*T)/V + (B*R*T)/V^(2)
// w = integrate('(R*T/V) + (B*R*T)/V^(2)','V',V1,V2)
// Under isothermal conditions,
// w = R*T*log(V2/V1) - B*R*T*((1/V2) - (1/V1));
// The second virial coefficient at state 1 is same as at state 2,as the temperature is the same i.e, T=300 [K]
Tr = T/Tc;
B_0 = 0.083 - (0.422/(Tr)^(1.6));
B_1 = 0.139 - (0.172/(Tr)^(4.2));
B = ((B_0+(w*B_1))*(R*Tc))/Pc;//[m^(3)/mol]

// Now we have to calculate molar volume i.e V1 and V2 at given conditions
// At state 1,
deff('[y]=f(V)','y=V^(2)-(R*T/P1)*V-(B*R*T)/P1');
V_1 = fsolve(-1,f);
V_2 = fsolve(1,f);
// We will take root near to (R*T)/P, i.e V_2
V1 = V_2;

// At state 2,
deff('[y]=f1(V)','y=V^(2)-(R*T/P2)*V-(B*R*T)/P2');
V_3=fsolve(-1,f1);
V_4=fsolve(1,f1);
V2 = V_4;
// The work done is thus,
w = R*T*log(V2/V1) - B*R*T*((1/V2) - (1/V1));//[J]
w = w*10^(-3);//[kJ]

printf(" The work done is %f kJ/mol\n",w);
printf(" Negative sign indicates that work is done on the gas");

