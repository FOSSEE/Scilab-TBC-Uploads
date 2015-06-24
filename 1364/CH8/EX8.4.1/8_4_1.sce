clc
//initialisation of variables
g= 981 //cm/sec^2
d= 0.1 //mm
v= 35 //centi-stokes
d1= 10 //mm
d2= 1 //mm
//CALCULATIONS
u= g*d^2*100/(18*v*d1^2)
ub= (d2/d)^2*u
//RESULTS
printf (' rate for diameter 0.1 mm= %.4f cm/sec',u) 
printf (' \n rate for diameter 1 mm= %.2f cm/sec',ub) 
