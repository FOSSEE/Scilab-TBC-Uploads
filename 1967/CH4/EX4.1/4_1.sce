clc
//initialisation of variables
clear
T1= 400 //K
T2= 300 //K
k1= 6.095 //cal mole^-1 K^-1
k2= 3.253*10^-3 //cal mole^-1 K^-2
k3= -1.017*10^-6 //cal mole^-1 K^-3
//CALCULATIONS
dH= k1*(T1-T2)+0.5*k2*(T1^2-T2^2)+(1/3)*k3*(T1^3-T2^3)
//RESULTS
printf ('Heat required to raise the temperature = %.f cal-mole^-1',dH)
