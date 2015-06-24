
clc
//initialization of variables
k = 16*10^-3 // m.t.c in cm/sec
D  = 1.25*10^-5 // Diffusion co efficient in cm^2/sec
//Calculations 
K1 = (k^2)/D
//Results
printf("The rate constant is %.f sec^-1",K1)
