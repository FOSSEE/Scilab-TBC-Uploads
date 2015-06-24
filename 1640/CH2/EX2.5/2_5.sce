clc 
//initialisation of variables
d1= 15 //in
d2= 6//in
h= 10 //in of mercury
C= 0.98
sm= 13.6
w= 12
g= 32.2 //ft/sec^2
//CALCULATIONS
a1= %pi*(d1/12)^2/4
a2= %pi*(d2/12)^2/4
h1= h*(sm-1)/w
Q= C*(a1*a2/(sqrt(a1^2-a2^2)))*sqrt(2*g)*sqrt(h1)*6.24*60*60
//RESULTS
printf ('Discharge = %.f gph ',Q)
