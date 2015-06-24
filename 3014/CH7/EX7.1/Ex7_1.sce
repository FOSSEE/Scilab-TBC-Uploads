
clc 
//Given that
p = 1000 // power in watt
d = 2 // Distance from lamp in m
epsilon_0 = 8.854e-12 // Permittivity of free space
mu_0 = 4*%pi*1e-7 // Permeability of free space
printf("Example 7.1")
s = p/(4*%pi*d^2)// Calculation of pointing vector
E_H_ratio = sqrt(mu_0/epsilon_0) // Calculation of ratio of Electric field and magnetic field
E= sqrt(E_H_ratio*s) // Calculation of  Electric field 
printf("\n Average value of electric field at distance %d m is %f Volt/m \n\n\n",d,E)
// Answer in book is 48.87 volt/m which is due to wrong calculation at intermediate steps
