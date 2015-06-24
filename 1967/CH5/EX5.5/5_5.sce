clc
//initialisation of variables
clear
T1= 25 //C
T2= 100 //C
dH1= -57.8 //kcal
Cp1= 8.03 //cal deg^-1
Cp2= 6.92 //cal deg^-1
Cp3= 7.04 //cal deg^-1
//RESULTS
Cp= Cp1-(Cp2+0.5*Cp3)
dH2= Cp*10^-3*(T2-T1)+dH1
//RESULTS
printf ('Stanadard heat of formation = %.2f kcal mole^-1',dH2)
