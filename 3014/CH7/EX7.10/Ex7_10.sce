 
clc 
//Given that
p = 500 // power in watt
d = 1 // Distance from lamp in m
epsilon_0 = 8.854e-12 // Permittivity of free space
mu_0 = 4*%pi*1e-7 // Permeability of free space
printf("Example 7.10")
s = p/(4*%pi*d^2)// Calculation of pointing vector
E_H_ratio = sqrt(mu_0/epsilon_0) // Calculation of ratio of Electric field and magnetic field
H = s/E_H_ratio // Calculation of Electric field 
h = ceil(H*100)/100 // rounding off for 2 decimal places
E= p/(4*%pi*h) // Calculation of Electric field 
printf("\n Average value of electric field at distance %d m is %f Volt/m ",d,E)
printf("\n Average value of magnetic field at distance %d m is %f Amp-turn/m \n\n\n",d,h)
