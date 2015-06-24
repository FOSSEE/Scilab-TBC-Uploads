clear;
clc;
printf("\t\t\tExample Number 8.1\n\n\n");
// transmission and absorption in a gas plate
// Example 8.1 (page no.-381) 
// solution

T = 2000+273;// [K] furnace temperature 
L = 0.3;// [m] side length of glass plate
t1 = 0.5;// transmissivity of glass between lambda1 to lambda2
lambda1 = 0.2;// [micro m]  
lambda2 = 3.5;// [micro m]  
E1 = 0.3;// emissivity of glass upto lambda2 
E2 = 0.9;// emissivity of glass above lambda2
t2 = 0;// transmissivity of glass except in the range of lambda1 to lambda2
sigma = 5.669*10^(-8);// [W/square meter K^(4)]
A = L^(2);// [square meter] area of glass plate
// calculating constants to use table 8-1(page no.-379-380)
K1 = lambda1*T;// [micro m K]
K2 = lambda2*T;// [micro m K]
// from table 8-1
Eb_0_lam1_by_sigmaT4 = 0;
Eb_0_lam2_by_sigmaT4 = 0.85443;
Eb = sigma*T^(4);// [W/square meter]
// total incident radiation is 
// for 0.2 micro m to 3.5 micro m
TIR = Eb*(Eb_0_lam2_by_sigmaT4-Eb_0_lam1_by_sigmaT4)*A;// [W]
TRT = t1*TIR;// [W]
RA1 = E1*TIR;// [W] for 0<lambda<3.5 micro m
RA2 = E2*(1-Eb_0_lam2_by_sigmaT4)*Eb*A;// [W] for 3.5 micro m <lambda< infinity 
TRA = RA1+RA2;// [W]
printf("total energy absorbed in the glass is %f kW",TRA/1000);
printf("\n\n total energy transmitted by the glass is %f kW",TRT/1000);
