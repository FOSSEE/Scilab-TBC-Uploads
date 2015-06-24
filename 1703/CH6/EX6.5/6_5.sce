

clc
//initialisation of variables
l= 5000 //ft
d= 24 //in
Q= 18 //cuses
t= 10 //sec
P= 275000 //lb/in^2
g= 32.2 //ft/sec^2
w=62.4
//CALCULATIONS
v= Q/(%pi*(d/24)^2)
C= v/(t^2/2)
Pr= ((l*C*t/g)+(v^2/(2*g)))/2.3
Pr1= v*12*sqrt(w*P/(386.4*1728))
//RESULTS
printf ('Pressure Rise = %.1f lb/in^2',Pr)
printf ('\n Pressure Rise = %.f lb/in^2',Pr1)
