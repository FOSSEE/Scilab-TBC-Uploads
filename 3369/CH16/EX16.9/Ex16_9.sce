//Chapter 16,Example 9,page 563
//Determine the maximum output voltage and energy rating
clear
clc
n = 8
C1 = 0.16/n // micro F
C2 = 0.001 // micro F
T2 = 50
T1 = 1.2
// beased on figure 16.12
a = 6.4 // alpha
theta = T2/9.5
X = (1/a^2)*(1+C2/C1)
R1 = (a*theta*10^-6/C2)*(1-sqrt(1-X))
R2 = (a*theta*10^-6/(C1+C2))*(1+sqrt(1-X))
R1n = R1/n
R2n = R2/n
V0 = n*120 
neta = 1/(1+(1+R1/R2)*C2/C1)
V = neta*V0
E = 1/2*C1*V0^2 
printf("\n Theta = %f micro S", theta)
printf("\n X = %f ", X)
printf("\n V0 = %f ", V0)
printf("\n R1 = %f Ohm", R1*10^6) 
printf("\n R2 = %f Ohm", R2*10^6) 
printf("\n R1/n = %d Ohm", R1n*10^6) 
printf("\n R2/n = %d Ohm", R2n*10^6) 
printf("\n neta = %f ", neta)
printf("\n Maximum output voltage = %f kV", V) 
printf("\n Energy rating = %f J", E)

// Answers greatly vary due to round off error
