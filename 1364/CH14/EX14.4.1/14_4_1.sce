clc
//initialisation of variables
N= 1450 //rev/min
Q= 500 //gal/min
H= 60 //ft
D= 10.25 //in
//CALCULATIONS
Ns= N*sqrt(Q)/H^0.75
h= (N*sqrt(Q/2)/Ns)^(4/3)
d= D*sqrt(h/H)
//RESULTS
printf (' head= %.f ft',h)
printf (' \n size of the pump= %.2f in',d)
