
clc
//initialization of variables
D = 1.9*10^-5 //Diffusion co efficient in cm^2/sec
k = 2.5*10^-3 // M.T.C in cm/sec
//Calculations
Lbyvmax = 4*D/((k^2)*%pi)//sec
tou = D/k^2 // sec
//Results
printf("The contact time is %.1f sec",Lbyvmax)
printf("\nThe surface resident time is %.1f sec",tou)
