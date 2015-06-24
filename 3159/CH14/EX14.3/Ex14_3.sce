// Estimation of resistivity due to impurity scattering of 1% of Nickel in copper lattice
clc
r_cu = 1.8e-8 // resistivity of pure copper in ohm-m
r_Ni_cu = 7e-8 //resistivity of copper 4% Ni in ohm-m
per1 = 4//impurity in percent
per2 = 1 // impurity in percent
printf("\n Example 14.3")
r = (r_Ni_cu-r_cu)*per2/per1 // resistivity of copper 1% Ni in ohm-m
printf("\n Resistivity due to impurity scattering of 1 %% of Nickel in copper lattice is %.1e ohm-m",r)
