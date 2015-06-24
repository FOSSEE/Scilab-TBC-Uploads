clc
//initialisation of variables
clear
F1= 24.423//cal deg^-1
F2= 21.031 //cal deg^-1
F3= 37.172 //cal deg^-1
H1= 2.024 //kcal
H2= 1.035 //kcal
H3= 2.365 //kcal
H= -57.8 //kcal
T= 25 //C
//CALCULATIONS
dF= F3-F1-F2
dH= H3-H1-H2
Hf= H-dH
F= Hf-((273.2+T)*dF*10^-3) 
//RESULTS
printf ('Standard free energy = %.2f kcal',F)
