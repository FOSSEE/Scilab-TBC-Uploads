clc
//initialisation of variables
P= 163 //h.p
n= 0.84
w= 62.3 //lbf/ft^3
h= 65 //ft
d= 7 //ft
D= 4.67 //ft
//CALCULATIONS
q= P*550*6.23/(n*w*h)
r= d^3/D
Q= q*r
//RESULTS
printf ('rate of flow= %.f gal/sec',Q+40)
