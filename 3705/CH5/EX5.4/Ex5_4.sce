
clear//

//Variable Declaration
M=15000 //Maximum bending moment in absolute values in lb.ft
S=42 //Sectional Modulus in in^3

//Calculations
sigma_max=M*12*S**-1 //Maximum stress in the section in psi

//Result
printf("\n The maximum Bending Stress in the section is %0.0f psi",sigma_max)
