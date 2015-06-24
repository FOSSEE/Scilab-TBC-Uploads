clc
//initialisation of variables
mu= 0.3
E= 200000 //N/mm^2
R= 0.1*10^-2
//CALCULATIONS
K= E/(3*(1-2*mu))
sigma= R*K
linearstrain= R/3
//RESULTS
printf ('K= %.f N/mm^2',K)
printf (' \n sigma=%.f N/mm^2',sigma)
printf (' \n linearstarin=%.5f ',linearstrain)
