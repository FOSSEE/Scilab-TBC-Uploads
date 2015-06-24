
clc 
//initialisation of variables
d= 30 //in
a= 90 //degrees
Q= 62.5 //ft^3/sec
w= 62.4 //lbs/ft^3
n=4
g=32.2
//CALCULATIONS
v= Q*4/(%pi*(d/12)^2)
P= w*%pi*(d/12)^2*v^2/(4*g)
Px= P/n
//RESULTS
printf ('pull on each bolt= %.1f lbs',Px)
