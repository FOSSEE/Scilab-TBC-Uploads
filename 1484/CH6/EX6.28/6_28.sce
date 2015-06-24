
clc 
//initialisation of variables
f= 0.01
l= 10000 //ft
d= 6 //in
g= 32.2 //ft/sec^2
W= 1200 //lbs/in^2
w= 62.4 //lbs/ft^2
//CALCULATIONS
hf= 4*f*l/(2*g*(d/12))
H= 3*hf
H1= W*144/w
v= sqrt(H1/H)
H2= 2*H1/3
HP= w*(%pi*(d/12)^2/4)*v*H2/550
dn= ((d/12)^5*10/(8*f*l))^(1/4)
//RESULTS
printf ('size of the nozzle at the end= %.3f in',dn) 
