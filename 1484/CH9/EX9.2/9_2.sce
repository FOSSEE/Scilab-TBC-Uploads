clc 
//initialisation of variables
d= 0.5 //in
V= 1 //ft/sec
l= 200 //ft
T= 5 //degrees
g= 32.2 //f/sec^2
//CALCULATIONS
i= 0.04*V^2*12*4/(g*d)
gf= i*l
//RESULTS
printf ('loss of head= %.1f ft ',gf)
