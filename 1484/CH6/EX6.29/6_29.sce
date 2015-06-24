clc 
//initialisation of variables
g= 32.2 //ft/sec^2
Q= 1750000 //gallons
h= 500 //ft
f= 0.0075
p= 80 //per cemt
l= 2 //miles
w= 62.4 //lb/ft^3
hf= 100 //ft
//CALCULATIONS
r= hf*2*g/(4*f*l*5280)
R= ((Q/(60*60*w))*(4/%pi)*r^2)^0.2
d= R^2*2.5/r
HP= Q*(h-hf)*10/(60*60*550)
//RESULTS
printf ('diameter = %.2f ft',d)
printf ('\n maximum horse power = %.f HP',HP)
