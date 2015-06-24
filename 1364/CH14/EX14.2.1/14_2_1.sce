clc
//initialisation of variables
d= 0.96
H1= 300 //ft
g= 32.2 //ft/sec^2
u= 60 //ft/sec
dw= 118 //ft/sec
w= 62.3 //lbf/ft^3
n= 0.95
//CALCULATIONS
W= u*dw/g
V= d*sqrt(2*g*H1)
P= w*V*220*(%pi/144)/550
nh= W/H1
nm= 0.5/nh
no= nh*nm*100
//RESULTS
printf (' Hydraulic efficiency= %.f percent',no)
