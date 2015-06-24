
clc
//initialization of variables
K = 1.46*10^-4 // lit/mol-sec (rate constant)
cpyridine = 0.1 // mol/lit
K1 = 2.0*10^-5 // cm^2/sec
//Calculations
D = K*cpyridine // sec^-1
k0 = (sqrt(D*K1))*10^5//in x*10^-5 cm/sec
//Results
printf("The diffusion co efficient of methyl iodide in benzene is %.1f x10^-5 cm/sec",k0)
