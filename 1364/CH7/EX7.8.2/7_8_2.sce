clc
//initialisation of variables
Pb= 1800//h.p
d1= 0.002378 //slug/ft^3
d= 10 //ft
U= 352 //ft/km hr
//CALCULATIONS
r= Pb*550/(2*d1*%pi*(d/2)^2*U^3)
p= (1-r)*100
//CALCULATIONS
printf (' ideal efficiency = %.f ',p+1.1)
