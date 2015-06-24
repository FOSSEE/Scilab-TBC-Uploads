clc 
//initialisation of variables
Cd= 0.62
g= 32.2 //ft/sec^2
l= 200 //ft
w= 25 //ft
a1= 5 //ft^2
h= 20 //ft
//CALCULATIONS
t= 2*l*w*sqrt(h-(h/a1))/(Cd*sqrt(2*g)*a1)
//RESULTS
printf ('tme rquired to fill the lock= %.f sec',t)
