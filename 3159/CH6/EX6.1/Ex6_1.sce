// Find equilibrium concentration of vacancies in metals at given temperature
clc
t1 = 0 // temperature in kelvin
t2 = 300 // temperature in kelvin
t3 = 900// temperature in kelvin
R = 8.314 // universal gas constant
del_hf_al = 68 // Enthalpy of formation of aluminium crystal in KJ
del_hf_ni = 168 // Enthalpy of formation of nickel crystal in KJ
printf("\n Example 6.1")

printf("\n Equilibrium concentration of vacancies of aluminium at %dK is 0",t1)
n_N = exp(-del_hf_al*1e3/(R*t2))
printf("\n Equilibrium concentration of vacancies of aluminium at %dK is %.2e",t2,n_N) // answer in book is 1.45e-12
n_N = exp(-del_hf_al*1e3/(R*t3))
printf("\n Equilibrium concentration of vacancies of aluminium at %dK is %.2e",t3,n_N) // answer in book is 1.12e-4

printf("\n\n Equilibrium concentration of vacancies of Nickel at %dK is 0",t1) 
n_N = exp(-del_hf_ni*1e3/(R*t2))
printf("\n Equilibrium concentration of vacancies of Nickel at %dK is %.2e",t2,n_N)
n_N = exp(-del_hf_ni*1e3/(R*t3))
printf("\n Equilibrium concentration of vacancies of Nickel at %dK is %.2e",t3,n_N) // answer in book is 1.78e-10

