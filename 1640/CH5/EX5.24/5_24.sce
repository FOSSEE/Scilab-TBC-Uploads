clc 
//initialisation of variables
D= 3 //in
l= 800 //ft
H= 120 //ft
f= 0.01
g= 32.2 //ft/sec^2
w= 62.4 //lb/ft^3
//CALCULATIONS
d= ((D/12)^5/(8*f*l))^0.25
hf= H/3
dh= H-hf
v= sqrt(hf*(D/12)*2*g/(4*f*l))
HPmax= w*%pi*((D/48)^2/4)*v*dh/550
//RESULTS
printf ('HPmax = %.3f HP ',HPmax)
