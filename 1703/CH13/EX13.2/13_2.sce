
clc
//initialisation of variables
P1= 1100 //lb/in^2
P2= 85 //lb/in^2
f= 0.01
g= 32.2 //ft/sec^2
l= 1600 //ft
r= 1/8
W= 2500 //lb
d= 6 //in
//CALCULATIONS
L= W*d
P= L*2.31/(%pi*(d/2)^2)
s1= P1*2540/1100
s2= P2*196/85
vp= sqrt((s1-s2-P)/(4*f*l/(2*g*r)))
V= vp/16
Vl= V*d
Vp= sqrt((s1/3)/(4*f*l/(2*g*r)))
vl= Vp*d/16
Hr= s1-(s1/3)-s2
Lr= Hr*%pi*(d/2)^2/(2.31*d)
//RESULTS
printf("In case 1, velocity of load = %.2f ft/sec",Vl)
printf("\n In case 2, velocity of load = %.2f ft/sec",vl)
printf ('\n Load to be lifted = %.f lb ',Lr)
