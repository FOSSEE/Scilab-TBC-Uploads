clc
//initialisation of variables
clear
dH= 214470 //kcal mole^-1
a= 72.43 //calmole^-1deg^-1
b= 13.08*10^-3 //kcalmole^-1
c= -1.172*10^-6 //kcalmole^-1
//CALCULATIONS
x=poly(0,"x")
vec=roots(a*x+b*x^2+c*x^3-dH)
T= vec(3)-273
//RESULTS
printf ('Temperature = %.f C',T+15)
