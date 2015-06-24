clear
clc
//initialisation of variables
W= 20 //tons/hr
l= 1000 //ft
w= 57 //lb/ft^3
kv= 0.0205 //ft^2/sec
d= 6 //in
g= 32.2 //ft/sec^2
//CALCULATIONS
Q= W*2240/(3600*w)
A= %pi*(d/12)^2/4
v= Q/A
R= v*(d/12)/kv
n= w*kv/g
P= 32*v*n*l/((d/12)^2*w)
HP= P*2240*W/(3600*500)
//RESULTS
printf ('Reynolds number = %.1f ',R)
printf ('\n H.P required = %.2f hp',HP)

//The answer is a bit different due to rounding off error in textbook

