clc
//initialisation of variables
T= 25 //C
H= -94.05 //kcal
H1= -26.42 //kcal
S= 51.06 //cal per degree
S1= -47.3 //cal per degree
S2= -24.5 //cal per degree
//CALCULATIONS
dH= (H-H1)*1000
dS= S+S1+S2
F= dH-(273+T)*dS
//RESULTS
printf (' value of F = %.f cal',F)
