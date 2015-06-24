clc
//Intitalisation of variables
clear
k1= 9.92 //kcal/deg
T2= 125 //C
T1= 25 //C
k2= 1.15*10^-3 //kcal deg^-2
k3= 3.4*10^-6 //kcal deg^-3
dH1= -22.1 //kcal
//CALCULATIONS
dH= 10^-3*(-k1*(T2-T1)-k2*((273+T2)^2-(273+T1)^2)+k3*((273+T2)^3-(273+T1)^3))
dH2= dH1+dH
//RESULTS
printf ('dH2-dH1 = %.2f kcal',dH)
printf ('\n Heat of reaction = %.2f kcal',dH2)

