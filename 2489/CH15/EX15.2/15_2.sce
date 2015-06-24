clc
//Intitalisation of variables
clear
c1= 0.01 //M
c2= 0.001 //M
n= 2 //moles
k= -0.509
n1= 1 //moles
//CALCULATIONS
f1= 10^(k*sqrt(c1))
f2= 10^(k*n*sqrt((c2*(n+n1))))
//RESULTS
printf ('activity coefficient = %.3f  ',f1)
printf ('\n activity coefficient = %.3f  ',f2)
