clc
//initialisation of variables
V= -0.658 //volt
V1= -0.3363 //volt
n= 1 //electron
F= 96438 //coloumb
R= 8.314 //j/mol K
T= 25 //C
//CLACULATIONS
V2= V-V1
Ksp= 10^(V2*n*F/(2.303*R*(273.2+T)))
//RESULTS
printf (' Solubility constant = %.1e volt',Ksp)
