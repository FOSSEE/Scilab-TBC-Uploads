clc
//initialisation of variables
s= 0.9
v= 5 //ft/sec
l= 10 //ft
di= 0.5 //in
n= 100
u= 0.002 //lbfsec/ft^2
w= 62.3 //lbf/ft^3
g= 32.2 //ft/sec^2
//CALCULATIONS
dp= 8*u*v*l/(di/2)^2
hf= dp*144/(s*w)
hk= v^2/(2*g)
ht=hf+hk
P= s*w*n*v*%pi*ht*di^2/(144*4*550)
//RESULTS
printf (' horse-power required = %.1f h.p',P)
