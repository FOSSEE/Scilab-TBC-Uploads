clc
//initialisation of variables
L= 20 //ft
b1= 12 //in
h1= 4 //in
b2= 4 //in
h2= 12 //in
Fs= 1200 //psi
La= 5 //ft
Lb= 15 //ft
//CALCULATIONS
Ina= b1*h1^3/12
P1= (Fs*Ina*4)/((h1/2)*12*La*3)
Ina1= b2*h2^3/12
P2= (Fs*Ina1*4)/((h2/2)*12*La*3)
//RESULTS
printf ('P max in first case= %.2f lb',P1)
printf ('\n P max in second case= %.2f lb',P2)
