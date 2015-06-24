
clc
//initialisation of variables
g= 32.2 //ft/sec^2
d= 12 //in
h= 0.1 //m
w= 240 //r.p.m
W= 62.4 //lbft/sec^2
//CALCULATIONS
P= (%pi*(d/24)^4*W*(2*%pi*4)^2)/(4*g)
Pt= P+%pi*(d/24)^2*W*(h/12)
//RESULTS
printf (' Total pressure on bottom of cylinder = %.3f Lb ',Pt)
