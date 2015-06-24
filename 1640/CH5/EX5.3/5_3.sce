clc 
//initialisation of variables
d= 6 //in
Q= 2 //cfs
l= 1000 //ft
f= 0.0055
w= 62.4 //lb/ft^3
g= 32.2 //ft/sec^2
h= 70 //ft
//CALCULATIONS
v= Q/(%pi*(d/12)^2/4)
hf= 4*f*l*w*(Q/(%pi*(d/12)^2/4))^2/((d/12)*2*144*g)
P= hf+(h*w/144)
//RESULTS
printf ('pressure = %.1f lb/in^2 ',hf)
printf ('\n presure difference = %.2f lb/in^2 ',P)
