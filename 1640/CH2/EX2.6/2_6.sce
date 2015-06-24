clc 
//initialisation of variables
d1= 8 //in
d2= 4 //in
h= 10 //in of mercury
Cd= 0.98
g= 32.2 //ft/sec^2
sm= 13.56
//CALCULATIONS
a1= %pi*(d1/12)^2/4
a2= %pi*(d2/12)^2/4
h1= h*(sm-1)/12
Q= a1*a2*sqrt(2*g)*sqrt(h1)/sqrt(a1^2-a2^2)
Qactual= Cd*Q
//RESULTS
printf ('Actual discharge = %.2f cuses ',Qactual)
