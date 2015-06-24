clc 
//initialisation of variables
Q= 10 //ft^3/sec
a1= 1 //ft^2
a2= 4 //ft^2
g= 32.2 //ft/sec^2
p1= 12 //lb/in^2
v1= 10 //ft/sec
w= 62.4 //lb/ft^3
//RESULTS
v2= v1*a1/a2
Hl= (v1-v2)^2/(2*g)
p2= ((p1*144/w)+(v1^2/(2*g))-(v2^2/(2*g))-Hl)*(w/144)
W= Hl*v1*w/550

//RESULTS
printf ('Head lost = %.3f ft of water ',Hl)
printf ('\n Pressure in larger part of pipe = %.2f lb/in^2 ',p2)
printf ('\n Work done = %.3f HP ',W)
