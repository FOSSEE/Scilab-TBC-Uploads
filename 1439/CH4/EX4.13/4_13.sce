clc 
//initialisation of variables
dH293= -115595.8 //cal 
T1= 1500 //K
T2= 298 //K
k1= -5.6146 //cal deg^-1 mole^-1
k2= 1.8931*10^-3 //cal deg^-2 mole^-1
k3= 4.723*10^-7 //cal deg^-3 mole^-1
//CALCULATIONS
dH=dH293+ k1*(T1-T2)+(k2*(T1^2-T2^2)/2)+(k3*(T1^3-T2^3)/3)
//RESULTS
printf ('dH1500= %.f cal ',dH)
