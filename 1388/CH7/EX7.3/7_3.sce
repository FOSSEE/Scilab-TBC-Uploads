clc
//initialisation of variables
M= 25.01 //gms
n= 1.0053 //moles
n1= 6.6*10^-5 //moles
e= 1.350*10^-3 //coloumbs
//CALCULATIONS
x= M/n
y= n1*x
nm= y*10^3+e*10^3-(x/10)
t= nm/(e*10^3)
//CALCULATIONS
printf (' transference number = %.3f  ',t)
