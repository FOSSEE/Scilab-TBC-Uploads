clc 
//initialisation of variables
h= 25 //ft
l= 2000 //ft
d= 12 //in
g= 32.2 //ft/sec^2
f= 0.005
dz= 16 //ft
zb= 25 //ft
zc= -16 //ft
//CALCULATIONS
v= sqrt(2*g*h/(1.5+(4*f*l/(d/12))))
Q= %pi*(d/12)^2*v/4
l1= (34-dz)*l/(zb-zc-dz)
//RESULTS
printf ('Discharge = %.1f cfs ',Q)
printf ('\n length of the inlet = %.f ft of water ',l1)
