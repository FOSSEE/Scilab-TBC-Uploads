
clc
//initialisation of variables
r= 3 //in
v= 20 //ft/sec
P= 30 //Lb/in^2
r1= 6 //in
w= 62.4 //lbft/sec^2
g= 32.2 //ft/sec^2
//CALCULATIONS
C= v*r/12
P2= P-(w/144)*(C^2/(2*g))*((1/(r1/12)^2)-(1/(r/12)^2))
//RESULTS
printf (' pressure at 6 in = %.2f Lb/in^2 ',P2)
