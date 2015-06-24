clc
//initialisation of variables
E0= 0.0140 //volt
n= 2
r= 2
V= 96500 //coloumbs
//CALCULATIONS
E= E0-0.0576*log10(n)
G= -n*V*E/4.1840
//RESULTS
printf ('gibbs free energy = %.f cal',G)
