// Scilab code Exa12.3 : : Page-574 (2011)
clc; clear; 
A = 12;        // Mass number of Carbon
alpha = (A-1)^2/(A+1)^2;        // Scattering coefficient
E_loss = 1/2*(1-alpha)*100;        // Energy loss of neutron
printf("\nThe energy loss of neutron = %5.3f percent",E_loss)

// Result
// The energy loss of neutron = 14.201 percent 
 