//Chapter 16,Example 10,page 564
//Determine the from and tail times
clear
clc
n = 12
C1 = 0.125*10^-6/n // micro F
C2 = 0.001*10^-6 // micro F
R1 = 70*n // ohm
R2 = 400*n // ohm
// beased on figure 16.15
theta = sqrt(C1*C2*R1*R2)
neta = 1/(1+R1/R2+C2/C1)
a = R2*C1/(2*theta*neta) // alpha
T2 = 7*theta*10^6
T1 = T2/25
printf("\n R1 = %f Ohm", R1) 
printf("\n R2 = %f Ohm", R2) 
printf("\n Theta = %f microS",theta*10^6)
printf("\n Neta = %f",neta)
printf("\n Alpha = %f ",a)
printf("\n T1 = %f microS", T1) 
printf("\n T2 = %f microS", T2) 

// Answers greatly vary due to round off error
