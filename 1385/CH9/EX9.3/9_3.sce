clc
//initialisation of variables
K= 1.8*10^-5
V= 500 //ml
c1= 0.3 //M
c2= 0.2 //M
//CALCULATIONS
x= V*c1/1000
y= V*c2/1000
C= K*y/x
//RESULTS
printf (' hydronium-ion concentration = %.1e mole per litre',C)
