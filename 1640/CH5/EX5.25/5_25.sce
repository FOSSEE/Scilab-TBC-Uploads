clc 
//initialisation of variables
l= 2 //miles
Q= 2*10^6 //gal/day
d= 12 //in
t= 16 //sec
w= 62.4 //lb/ft^3
g= 32.2 //ft/sec^2
//CALCULATIO
Q1=Q*10/(w*24*60*60)
hi= l*5280*Q1/((%pi*(d/12)^2/4)*(g*t))
//RESULTS
printf ('height = %.1f ft ',hi)
