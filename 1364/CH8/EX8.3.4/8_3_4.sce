clc
//initialisation of variables
g= 32.2 //ft/sec^2
l= 2.54 //cm
g= 32.2 //ft/sec^2
v= 3.22 //centi-poise
f= 0.01
p= 1.74 //lbf/in^2
w= 100 //rev
//CALCULATIONS
V= v*l/(453.6*g*12)
R= f*p*60/(%pi*2*%pi*w*V)
//RESULTS
printf (' relevant ratio of diameter to clearance= %.1f ',R)
