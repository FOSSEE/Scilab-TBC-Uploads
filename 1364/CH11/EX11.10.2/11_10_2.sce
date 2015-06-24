clc
//initialisation of variables
g= 32.2 //ft/sec^2
H= 100//ft
L= 1000 //ft
h1= 0.03
h= 0.05
h2= 0.4
d= 6//in
le= 1021 //ft
//CALCULATIONS
u1= sqrt((2*g*H)/(1+h+h2+(h1*L/0.5)))
Q= %pi*(d/12)^2*u1/4
u2= sqrt((H*2*g)/(1+h+(1/16)*(1+h+h2+(h1*L/0.5))))
Q1= %pi*(d/24)^2*u2/4
r= sqrt((d/12)/(2*h1*le))
//RESULTS
printf (' rate of discharge without a nozzle= %.2f ft^3/sec',Q)
printf (' \n rate of discharge= %.2f ft^3/sec',Q1)
printf (' \n diameter of nozzle= %.2f in',r)
