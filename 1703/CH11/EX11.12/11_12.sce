clear
clc
//initialisation of variables
sl= 12 //ft
l= 20 //ft
d= 4 //in
dp= 6 //in
lst= 18 //in
k= 0.025
H= 32 //ft
g= 32.2 //ft/sec^2
pf= 6 //ft
a= 33.83 
a1= 9.53
//CALCULATIONS
A= sqrt((H-sl-d)*g/a)*a1
Q= 2*%pi*(dp/12)^2*lst/(12*4*60)
v= Q/(%pi*(d/12)^2/4)
kh= v^2/(2*g)
fh= k*l*v^2*12/(2*g*d)
N= sqrt((H-sl-pf)/(kh+fh))
//RESULTS
printf ('premissible speed = %.1f r.p.m',A)
printf ('\n maximum premissible speed = %.1f r.p.m',N)

//The answer is a bit different due to rounding off error in textbook

