clc
// initialization of variables
clear
sigma_3=0 // kgf/cm^2
tau_oct=1500 // kgf/cm^2
n=2 // given that sigma_1=n*sigma_2
// calculations
sigma_2=1500*3/(sqrt(2*n^2-2*n+2)) // // kgf/cm^2
sigma_1=n*sigma_2 // kgf/cm^2 
sigma_0=4500/sqrt(2) // kgf/cm^2
// Results
printf('The necessary stresses sigma_1, sigma_2 for biaxial yielding are \n %d kgf/cm^2, %d kgf/cm^2 and for uniaxial yielding sigma_0 %0.2f kgf/cm^2.',sigma_1,sigma_2,sigma_0);

