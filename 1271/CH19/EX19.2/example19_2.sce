clc 
// Given that
Hc1 = 1.41e5 // first critical field at 14.1K
Hc2 = 4.205e5 // second critical field at 12.9K 
T1 = 14.11 // temperature in K
T2 = 12.9 // temperature in K 
T = 4.2 // temperature in K
lambda_ = 380 // penetration depth at 0 K in A
// Sample Problem 2 on page no. 19.13
printf("\n # PROBLEM 2 # \n")
printf("Standard formula used \n ")
printf(" H = H_0 * (1 - (T / T_c)^2) \n")
Tc = sqrt((Hc2*T1^2 - Hc1*T2^2) / (Hc2 - Hc1))
H_ = Hc1 / (1 - (T1 / Tc)^2)
Hc = H_ * (1 - (T/Tc)^2)
printf("\n Transition temperature is %f K.\n Critical field at temperate at 4.2 k is %e A/m.",Tc,Hc)
