clc
//initialisation of variables
n=2
V= 0.67533 //volt
E= 23060 //cal volt^-1
Tc= -6.5*10^-4 //volt deg^-1
T= 25 //C
//CALCULATIONS
G= -n*V*E
S= n*E*Tc
H= -n*E*V+n*Tc*E*(273+T)
//RESULTS
printf ('dG = %.f cal',G)
printf ('\n dS = %.f cal deg^-1',S)
printf ('\n dH = %.f cal',H)
