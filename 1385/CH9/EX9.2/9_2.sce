clc
//initialisation of variables
k= 1.8*10^-5
C= 0.2 //M
T= 25 //C
//CALCULATIONS
x= sqrt(C*k)
a= x/C
C1= a*C
//RESULTS
printf (' hydronium-ion concentration = %.1e mole per litre',C1)
