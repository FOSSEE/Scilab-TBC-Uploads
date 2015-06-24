clc
//initialisation of variables
v= 0.11834 //volt
F= 96493.1 //coloumb
n= 1 //electron
R= 8.3144 //J/mol K
T= 25 //C
m= 0.1
m1= 0.9862
//CALCULATIONS
G= -n*F*v
G1= 2*R*(273.16+T)*log(m/m1)
//RESULTS
printf (' Gibs free energy = %.f joules',G)
printf (' \n Gibs free energy = %.f joules',G1)
