// Estimate fracture strength
clc
c = 2 // crack of half length in micro meter
Y = 70 // young’s modulus in GN m^-2
Gamma = 1 // specific surface energy 
printf("\n Example 12.1")
sigma_f = sqrt(2*Gamma*Y*1e9/(%pi*c*1e-6))/1e6
r = Y*1e3/sigma_f
printf("\n Fracture strength of %d MN m^-2 is 1/%dth of young’s modulus. ",ceil(sigma_f),ceil(r/100)*100)
printf("\n Thus Griffiths criterion bridges the gap between the \n observed and ideal strengths of brittle material")

