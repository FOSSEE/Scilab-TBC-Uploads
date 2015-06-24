clc
//initialisation of variables
Ksp= 1.4*10^-11
V= 200 //ml
M= 24.3 //gms
//CALCULATIONS
x= (Ksp/4)^(1/3)
m= x*M*V/1000
//RESULTS
printf (' grams of Mg+2 present = %.1e gms per mol',m)
