clc 
//initialisation of variables
W= 62.4 //lbs/ft^3
A= 4 //ft^2
P= 1000 //lbs
g= 32.2 //ft/sec^2
v= 10 //ft/sec
//CALCULATIONS
vr= sqrt(25+(P*g/(W*A)))+5
Q= vr*W*A/10
e= 2*v*100/(vr+v)
//RESULTS
printf ('quantity of water pumped= %.1f lbs',Q)
printf ('\n efficiency= %.1f per cent',e)
