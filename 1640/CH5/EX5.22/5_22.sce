clc 
//initialisation of variables
h1= 1640 //ft
h2= 40 //ft
d= 8 //in
l= 2 //miles
D= 3 //ft
f= 0.006
Cv= 0.98
g= 32.2 //ft/sec^2
w= 62.4 //lb/ft^3
//CALCULATIONS
r= (d/12)/D
vact= Cv*sqrt(2*g*(h1-h2)/(1+(4*f*l*5280*r^4/D)))
HP= w*vact^3*(%pi*(d/12)^2/4)/(550*2*g)
//RESULTS
printf ('Horse Power of Jet = %.f HP ',HP)
