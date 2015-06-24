clc
//initialisation of variables
d= 12 //in
n= 3
l= 24 //in
w= 1100 //gallons
l1= 380//ft
l2= 4 //ft
l3=56 //ft
//CALCULATIONS
r= 0.98*n*%pi*(d/12)^2*(l/12)
Q= w/6.23
C= Q/r
p= w*10*(l1+l2+l3)/(0.9*33000)
//RESULTS
printf (' Horse power required to drive= %.f h.p',p)
