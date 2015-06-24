
clc
//initialisation of variables
a= 30 //degrees
V= 100 //ft/sec
a1= 40 ///degrees
r= 2 //ft
r1= 1 //ft
v= 14 //ft/sec
a2= 35 //degrees
g= 32.2 //ft/sec^2
//CALCULATIONS
Vf= V*sind(a)
Vw= V*cosd(a)
c= Vf/tand(a1)
v1= Vw-c
R= r/r1
V1= v1/R
h= v/tand(a2)
Vw1= h-V1
W=(Vw*v1+Vw1*V1)/g
s= (V1*60/(2*%pi))
e= W*100*2*g/V^2
//RESULTS
printf (' Efficiency = %.f per-cent',e)
