clc
//initialisation of variables
n= 0.4
G= 2.68
w= 0.12
R= 1000 //kg/m^3
V= 10 //m^3
//calculations
d= G*R*(1-n)*(1+w)
s= ((1-n)*G+n)*R
M= s-d
m= M*V
//results
printf ('mass of water to be added for full saturation = % f kg ',m)
