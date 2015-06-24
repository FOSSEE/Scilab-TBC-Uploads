clc
//initialisation of variables
k= 1.1*10^-5
V= 600 //ml
n= 0.4 //mole
//CALCULATIONS
m= n*1000/V
x= (-k+sqrt(k^2+4*4*0.67*k))/(2*4)
M= 2*x
P= x*100/m
//RESULTS
printf (' molar concentration of NO2= %.1e mol per litre',M)
printf (' \n per cent dissociation= %.2f per cent',P)
