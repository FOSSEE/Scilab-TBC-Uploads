clear;
clc;

// Illustration 2.1
// Page: 30

printf('Illustration 2.1 - Page 30\n\n');

// solution

//***Data***//
// a = O2 & b = CO
Dab = 1.87*10^(-5);//[square m/s]
Pt = 10^5;//[N/square m]
z = 0.002;//[m]
R = 8314;//[Nm/kmol]
T = 273;//[K]
Pa1 = 13*10^(3);//[N/square m]
Pb1 = 10^(5)-13*10^(3);//[N/square m]
Pa2 = 6500;//[N/square m]
Pb2 = 10^(5)-6500;//[N/square m]
//********//

// Calculation from Eqn. 2.30
Pbm = (Pb1-Pb2)/log(Pb1/Pb2);//[N/square m]
Na = Dab*Pt*(Pa1-Pa2)/(R*T*z*Pbm);//[kmol/square m.s]
printf('Rate of diffusion of oxygen is %e kmol/square m.sec',Na);