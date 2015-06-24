
clc
//initialisation of variables
w= 62.4 //Lbsec/ft^3
d= 2 //in
V= 100 //ft/sec
g= 32.2 //ft/sec^2
a= 60 //degrees
//CALCULATIONS
W= w*(%pi/4)*(d/12)^2*V
F= W*V/g
N= W*V*sind(a)/g
//RESULTS
printf (' Normalforce on the plate when the jet is normal = %.1f Lb',F)
printf ('.\n Normalforce on the plate when the jet is inclines at 60 degrees = %.f Lb',N)
