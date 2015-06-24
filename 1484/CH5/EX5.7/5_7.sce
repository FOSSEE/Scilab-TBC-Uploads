clc 
//initialisation of variables
A= 25 //miles^2
t= 24 //hr
p= 50 //per cent
l= 3 //in
h= 4 //ft
//CALCULATIONS
A1= 5280^2*A
V= A1*l/12
V1= V/(t*60*60)
V2= V1/2
L= (V2/(3.33*h*2))+0.2*4
//RESULTS
printf ('length of weir= %.1f ft',L)
