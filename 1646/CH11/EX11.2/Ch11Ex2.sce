// Scilab Code Ex11.2: Page-560 (2011)
clc;clear;
E_o = 1e+3;....// Amplitude field vector in free space,N/C
c = 3e+8;....// Speed of light,in m/s
// From the relation between the amplitude of the field vector E and vector H of an EM wave in free space E_o = H_o*(sqrt(mu_o/eps))and B_o = mu_o*H_o, we have
B_o = E_o/c;
printf("\nThe maximum value of magnetic induction vector = %4.2e weber/A-m",B_o); 

// Result
// The maximum value of magnetic induction vector = 3.33e-006 weber/A-m 
