
clc
//initialisation of variables
h= 3 //in
g= 32.2 //ft/sec^2
r= 1.5 //in
//CALCULATIONS
w= sqrt((h/12)*2*g/(r/12)^2)
V= w/(2*%pi)
V1= V*60/2
//RESULTS
printf (' number of revolutions per minute made by engine at that engine = %.1f r.p.m ',V1)
