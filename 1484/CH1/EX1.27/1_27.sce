clc 
//initialisation of variables
w= 62.4 //lbs/ft^3
h= 9 //ft
l= 10 //ft
//CALCULATIONS
P= w*h^2/2
h1= h/3
Ra= P/2
x= (w*4*h^2/9)/Ra
x1= x+(h/3)
hb= h1-x
W= Ra*l
//RESULTS
printf ('magnitude od total in each beam= %.f lbs ',W)
