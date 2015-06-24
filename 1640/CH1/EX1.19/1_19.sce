clc 
//initialisation of variables
W= 5000 //tons
w= 10 //tons
d= 30 //ft
x= 5.5 //in
l= 10 //ft
a= 15 //degrees
//CALCULATIONS
GM= (w*d)*l/(W*(x/12))
M= GM*sind(a)*W
//RESULTS
printf ('Rightening moment = %.f lb ',M)
