clc
//initialisation of variables
v=4.6//ft^3
h=5//percent
p=60//lb/in^2
p1=0.8//ft^3
p2=19//lb/in^2
a=100//r.p.m
h1=5920//lb
W=h1/(2*a*p)//lb
V=(0.25*v)//ft^3
v1=21.07//ft^3
w=V/v1//lb
H=W+w//lb
v2=H*7.17//ft^3
P=w*v2//ft^3
P1=0.675*v//ft^3
//CALCULATIONS
DP=P1/v2//ft^2
//RESULTS
printf('The assumptions do you make in working out the dryness of the steam=% f ft^3',DP)
