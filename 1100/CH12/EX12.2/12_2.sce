clc
//initialisation of variables
h= 29.5 //in
n= 75
T= 80 //F
h1= 10 //in
mw= 0.380*18
ma= 14.47*29
d= 13.6 //kg/m^3
P= 0.5069 //psi
//CALCULATIONS
Pw= (n/100)*P
P= (h+(h1/d))*(0.491)
pa= P-Pw
r= mw/ma
//RESULTS
printf ('Pounds of water vapour enter the furnance per pound of dry air= %.4f lb vapour/lb air',r)
