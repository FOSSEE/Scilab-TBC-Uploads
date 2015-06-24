clc
//initialisation of variables
Mw= 500 //gm
Tw= 80 //C
Ti= -4 //F
Tf= 50 //C
ci= 0.5 //cal/gm
L= 79.7 //cal/gm
cw= 1 //cal/gm
Dt= Tw-Tf
//CALCULATIONS
Tf1= (5/9)*(Ti-32)
Dt1= Tf1-Tf
m= (Mw*cw*Dt)/(ci*(-Dt1)+L)
//RESULTS
printf ('Grams of ice can be added= %.f gm',m)
