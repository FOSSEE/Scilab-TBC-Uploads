 
clc 
//Given that
p = 2 // power in cal/min/cm^2

epsilon_0 = 8.854e-12 // Permittivity of free space
mu_0 = 4*%pi*1e-7 // permeability of free space
printf("Example 7.2")
s = p*4.2e4/60 // Calculation of pointing vector
E_H_ratio = sqrt(mu_0/epsilon_0) // Calculation of ratio of Electric field and magnetic field
E= sqrt(E_H_ratio*s) // Calculation of Electric field 
H = s/E // Calculation of Electric field 

printf("\n Average value of electric field  is %f Volt/m ",E*sqrt(2))
printf(" \nAverage value of magnetic field is %f Amp turn/m \n\n\n",H*sqrt(2))
