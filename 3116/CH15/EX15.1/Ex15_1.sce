

clc
// given that
v_f = 40 // volume percent of fibre in composite
E_f= 69 // Modulus of elasticity of fibre in GPa
v_m = 60  // volume percent of matrix in composite
E_m = 3.4// Modulus of elasticity of matrix in GPa
a = 250 // cross sectional area in mm^2
sigma = 50 // Tensile stress in MPa
Fm = 1 // let
Ff = 13.5*Fm 
printf("\n Example 15.1")
printf("\n Part A:")
E_cl = (v_f*E_f+v_m*E_m)/100
printf("\n Modulus of elasticity of composite is %0.0f GPa",E_cl)
printf("\n\n Part B:")
Fc = a*sigma
Fm = Fc/(Fm+Ff) 
Ff = Fc - Fm
printf("\n Force supported by m is %d N \n Force supported by fibre is %d N",Fm,Ff)
// Answer in book is as Fm = 860 N and Ff = 11640. It is due to approximation.
printf("\n\n Part C")
a_m = v_m*a/100
a_f = v_f*a/100
sigma_m = Fm/a_m
sigma_f = Ff/a_f
epsilon_m = sigma_m/(E_m*1000)
epsilon_f = sigma_f/(E_f*1000)
printf("\n Strain for matrix phase is %0.2e\n",epsilon_m)
printf(" Strain for fibre phase is %.2e.\n Both are identical",epsilon_f)

