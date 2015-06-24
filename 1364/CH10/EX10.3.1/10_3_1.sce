clc
//initialisation of variables
m= 6 //lb/sec
w= 62.3//lb/ft^3
s= 0.9
l= 2500 //ft
u= 0.115
r= 8 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
dp= 8*u*l*r^4*m/(%pi*s*w*g)
P= m*dp/(s*w*550)
//RESULTS
printf (' Power required= %.2f h.p',P)
