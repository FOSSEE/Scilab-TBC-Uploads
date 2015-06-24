
clc
//initialisation of variables
w= 62.4 //lbsec/ft^3
l= 2 //miles
v= 4 //ft/sec
g= 32.2 //ft/sec^2
t= 20 //sec
t1= 1 //sec
//CALCULATIONS
P= w*l*5280*v/(g*t)
P1= w*l*5280*v/(g*t1)
//RESULTS
printf (' Rise in pressure behind the valve = %.f Lb/ft^2',P)
printf (' \n Rise in pressure behind the valve = %.f Lb/ft^2',P1)
