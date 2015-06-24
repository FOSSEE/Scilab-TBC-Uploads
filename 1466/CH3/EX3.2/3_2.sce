
clc
//initialisation of variables
z1= 0 //ft
z2= 6 //ft
d= 4 //in
db= 2 //in
V= 300 //gal/min
w= 62.4 //lb/ft^3
g= 32.2 //ft/sec^2
//CALCULATIONS
v= V*10/(w*60)
A= %pi*d^2/4
A1= %pi*db^2/4
v1= v*144/A1
v2= v*144/A
dp= (z1-z2+(v1^2/(2*g))-(v2^2/(2*g)))*w/144
//RESULTS
printf (' difference ofpressure between top and bottom ends ofpipes= %.2f Lb/in^2 ',dp)
