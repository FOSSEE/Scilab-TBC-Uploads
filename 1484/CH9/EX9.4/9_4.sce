clc 
//initialisation of variables
v= 1.25 //poise
d= 3 //in
l= 6 //in
t= 0.002 //in
w= 40 //R.P.M
g= 32.2 //ft/sec^2
//CALCULATIONS
u= v*30.5/(453.6*g)
T= u*%pi^2*(d/12)^3*w*(l/12)/(120*t/12)
hp= T*2*%pi*w/33000
//RESULTS
printf ('Horse-power lost in velocit= %.4f ',hp)
