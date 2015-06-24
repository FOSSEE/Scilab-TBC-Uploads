clc
//initialisation of variables
Q= 18 //gpm
d= 2 //in
v2= 10 //fps
//CALCULATIONS
v1= Q*4/(%pi*d^2*3.12)
d2= sqrt(4*Q/(%pi*v2*3.12))
//RESULTS
printf ('minnimum diameter = %.3f in',d2)
