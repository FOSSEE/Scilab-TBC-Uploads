clear;
clc;
funcprot(0);

//Example - 2.7
// Page number - 47
printf("Example - 2.7 and Page number - 47\n\n");

// Given
T = 50+273.15;//[K] - Temperature
P = 15*10^(5);//[N/m^(2)] - Pressure
Tc = 305.3;//[K] - Critical temperature
Pc = 48.72*10^(5);//[N/m^(2)] - Critical pressure
w = 0.100;// Acentric factor
B = -157.31;//[cm^(3)/mol] - second virial coefficient
B = B*10^(-6);//[m^(3)/mol]
C = 9650;//[cm^(6)/mol^(2)] - third virial coefficient
C = C*10^(-12);//[cm^(6)/mol^(2)]
R = 8.314;//[J/mol*K] - Universal gas constant

// (1)
V_1 = (R*T)/P;//[m^(3)/mol] - Molar volume
printf(" (1).The molar volume for ideal equation of state is %e m^(3)/mol\n",V_1);

// (2)
Tr = T/Tc;// Reduced temperature
// At this temperature
B_0 = 0.083-(0.422/(Tr)^(1.6));
B_1 = 0.139-(0.172/(Tr)^(4.2));

// We know,(B*Pc)/(R*Tc) = B_0+(w*B_1)
B_2 = ((B_0 + (w*B_1))*(R*Tc))/Pc;//[m^(3)/mol]//second virial coefficient
printf(" (2).The second virial coefficent using Pitzer correlation is found to be %e m^(3)/mol which is same as given value\n",B_2);

// (3)
// Given (virial equation),Z=1+(B/V)
V_3 = B + (R*T)/P;//[m^(3)/mol] - Molar volume
printf(" (3).The molar volume using virial equation of state is %e m^(3)/mol\n",V_3);

// (4)
// Given (virial equation),Z = 1 + ((B*P)/(R*T)) + ((C - B^(2))/(R*T)^(2))*P^(2)
V_4 = B + (R*T)/P + ((C - B^(2))/(R*T))*P;// [m^(3)/mol]
printf(" (4).The molar volume using given virial equation of state is %e m^(3)/mol\n",V_4);

// (5)
// Given,Z = 1 + (B/V)
// Also,Z = (P*V)/(R*T). Substituting the value of Z,we get
// V^(2)-((R*T)/P)*V-((B*R*T)/P)=0.Solving the quadratic equation
deff('[y]=f(V)','y=V^(2)-((R*T)/P)*V-((B*R*T)/P)');
V_5_1 = fsolve(0,f);
V_5_2 = fsolve(1,f);

printf(" (5).The molar volume using given virial equation of state is %e m^(3)/mol\n",V_5_2);

// The roots are,V_5_1=0.0001743 [m^(3)/mol] and V_5_2=0.0016168 [m^(3)/mol].
// As 'V_2' is near to ideal volume (0.0017911 [m^(3)/mol]),it is taken as the molar volume

// (6)
// Given,Z = 1 + (B/V) + (C/V^(2))
// Also,Z = (P*V)/(R*T). Substituting the value of Z,we get
// V^(3)-((R*T)/P)*V^(2)-((B*R*T)/P)*V-((C*R*T)/P)=0. Solving the cubic equation
deff('[y]=f1(V)','y=V^(3)-((R*T)/P)*V^(2)-((B*R*T)/P)*V-((C*R*T)/P)');
V_6_3=fsolve(-1,f1);
V_6_4=fsolve(0,f1);
V_6_5=fsolve(1,f1);
//The above equation has 1 real and 2 imaginary roots. We consider only real root.
printf(" (6).The molar volume using given virial equation of state is %e m^(3)/mol\n",V_6_5);

