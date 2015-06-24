clear;
clc;

// Illustration2.2
// Page: 30

printf('Illustration 2.2 - Page: 30\n\n');

// solution

//***Data***//
Pt = 10^5;//[N/square m]
z = 0.002;//[m]
R = 8314;//[Nm/kmol]
T = 273;//[K]
//a = O2 b = CH4 c = H2
Pa1 = 13*10^(3);//[N/square m]
Pb1 = 10^(5)-13*10^(3);//[N/square m]
Pa2 = 6500;//[N/square m]
Pb2 = 10^(5)-6500;//[N/square m]
Dac = 6.99*10^(-5);//[N/square m]
Dab = 1.86*10^(-5);//[N/square m]
//*******//

// Calculation from Eqn. 2.30
Pbm = (Pb1-Pb2)/log(Pb1/Pb2);//[N/square m]
Yb_prime = 2/(2+1);
Yc_prime = 1-Yb_prime;
Dam = 1/((Yb_prime/Dab)+(Yc_prime/Dac));//[square m.s]
Na = Dam*(Pa1-Pa2)*Pt/(R*T*z*Pbm);//[kmol/square m.s]
printf('Rate of diffusion is %e kmol/square m.sec',Na);