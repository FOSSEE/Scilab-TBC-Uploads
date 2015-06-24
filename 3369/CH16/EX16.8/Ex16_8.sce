//Chapter 16,Example 8,page 562
//Determine the circuit efficiency
clear
clc
C1 = 0.125*10^-6 // F
C2 = 1*10^-9 // F
T2 = 2500
T1 = 250
// Bsaed on Figure 16.12
T2T1 = T2/T1
a = 4 // alpha
theta = T2/6
// From table 16.1
X = (1/a^2)*(1+C2/C1)
R1 = (a*theta*10^-6/C2)*(1-sqrt(1-X))
R2 = (a*theta*10^-6/(C1+C2))*(1+sqrt(1-X))
neta = 1/(1+(1+R1/R2)*C2/C1)
printf("\n Theta = %f micro S", theta)
printf("\n X = %f ", X)
printf("\n R1 = %f k Ohm", R1*10^-3) 
printf("\n R2 = %f k Ohm", R2*10^-3) 
printf("\n neta = %f ", neta)

// Answers may vary due to round off error
