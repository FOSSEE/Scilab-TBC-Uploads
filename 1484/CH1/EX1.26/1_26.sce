clc 
//initialisation of variables
w= 64 //lbs/ft^3
h= 12 //ft
l= 9 //ft
a= 45 //degrees
//CALCULATIONS
P= w*h^2/2
h1= h/3
Rb= P*h1/l
Ra= P-Rb
Wh= Rb*h1
T= Wh/sind(a)
//RESULTS
printf ('Load on the strut= %.f lbs ',T)
