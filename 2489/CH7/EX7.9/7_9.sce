clc
//Intitalisation of variables
clear
a= -9.92
b= -2.3*10^-3
c= 10.2*10^-6
T= 25 //C
dH= -22100 //cal
//CALCULATIONS
dH1= dH-(a*(273+T)+b*0.5*(273+T)^2+c*0.33*(273+T)^3)
//RESULTS
printf ('Heat of reaction = %.f cal',dH1+1)
