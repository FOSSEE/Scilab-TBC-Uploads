clc
//initialisation of variables
clear
v= 1 //lit
p= 1 //atm
h= 76 //cm
d= 13.595 //kg/cm^3
g= 980.66 //dunes cm^-2
j= 4.18 //joules
//CALCULATIONS
W= v*p
W1= h*d*g
W2= W1*10^-4
W3= W2/j
//RESULTS
printf ('Work done in lit-atm = %.f lit-atm',W)
printf ('\n Work done in dynes = %.2e dynes cm^-2',W1)
printf ('\n Work done in ergs = %.2e ergs',W2)
printf ('\n Work done in calories = %.2f calories',W3)
