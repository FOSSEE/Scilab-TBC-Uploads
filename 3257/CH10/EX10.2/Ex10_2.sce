// Lowering the viscosity of a polymer
clc
T1 = 453 // First temperature in K
T2  = 423 // Second temperature in K
k = 2.2 // ratio of obtained result to desired output
printf("\n Example 10.2")
del_t = T1-T2 // temperature difference in Kelvin
neeta1 = 10^(12-(17.5*del_t/(52+del_t))) // First viscosity 
neeta2 = neeta1/k // Desired viscocity 
del_t = ((12-log10(neeta2))*52/(5.5+log10(neeta2)))
T_n = T2 + del_t
printf("\n Polymer should be processed at %.1f K .",T_n)

