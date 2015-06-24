clc
//initialisation of variables
E= 10*10^6 //psi
ys= 6000 //psi
//CALCULATIONS
lbyr= sqrt(%pi^2*E/ys)
//RESULTS
printf ('Slenderness Ratio= %.f ',lbyr)
