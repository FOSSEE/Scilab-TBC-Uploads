
clc
//initialisation of variables
w= 62.4 //Lb sec/ft^3
A= 25 //in^2
Vr= 35 //ft/sec
V= 12 //m.p.h
g= 32.2 //ft/sec^2
//CALCULATIONS
W1= w*A*Vr/144
v= V*88/60
W= W1*(Vr^2-v^2)/(2*g)
hp= W/550
//RESULTS
printf (' horse-power required to work the pupms = %.1f ',hp)
