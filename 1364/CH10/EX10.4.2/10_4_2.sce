clc
//initialisation of variables
Q= 0.7//ft^3/sec
a= 16
n= 0.65
P= 5 //h.p
l= 3000 //ft
g= 32.2 //ft^2/sec 
d= 0.85 //gm/cc
d1= 0.5 //ft
//CALCULATIONS
u= Q*a/%pi
u1= n*P*550*g/(8*%pi*u^2*l)
v= u1/d
R= u*d1*30.5^2/1.05
//RESULTS
printf (' Reynolds number= %.f ',R)
