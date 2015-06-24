
clc
//initialisation of variables
g= 32.2 //ft/sec^2
w= 62.4 //Lbsec/ft^3
d= 3 //in
V= 40 //ft/sec
v= 30 //ft/sec
//CALCULATIONS
P= w*(%pi/4)*(d/12)^2*V*(V-v)/g
W= P*v
e= 2*(V-v)*v*100/V^2
//RESULTS
printf (' Prssure on the plates = %.f Lb',P)
printf ('.\n Work = %.f ft-Lb',W)
printf ('.\n Efficiency = %.1f per-cent',e)
