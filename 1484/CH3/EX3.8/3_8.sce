clc 
//initialisation of variables
d1= 12 //in
Q= 4.25 //ft^3/sec
h= 18 //ft
K= 0.98
g= 32.2 //ft/sec^2
sm= 13.6
//CALCULATIONS
R= sqrt((K*sqrt(2*g)*sqrt(h)*(%pi*(d1/12)^2/4)/Q)+1)
d2= sqrt(d1^2/(144*R))
dh= (sm-1)*(h/(12*2))
d3= Q*sqrt(dh/h)
//RESULTS
printf ('Diameter of the throat= %.2f ft ',d3)
