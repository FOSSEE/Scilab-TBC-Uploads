clc
//initialisation of variables
clear
R= 4 //in
r= 0.5 //in
c= 0.007
K= 33.96
w= 62.4 //lb/ft^3
pa= 12.13 //lb/in^2
pb= 14.7 //lb/in^2
w1= 2.5 //lbs
Q= 40 //gals/min
h= 1.86
//CALCULATIONS
va= Q*4*(2*r*12)^2/(6*w*%pi)
vb= Q*(2*r*12)^2/(6*w*2*R*%pi*0.32)
vx= vb*R/2
pu= 2*%pi*w*h
pd= pb*%pi*R^2
RP= pb*%pi*R^2-2*%pi*w*(0.5*K*((R/12)^2-(r/12)^2)-c*log(R/r))-pa*%pi*r^2+w1
//RESULTS
printf ('velocity = %.1f ft/sec',va)
printf ('\n velocity = %.2f ft/sec',vb)
printf ('\n velocity = %.2f ft/sec',vx)
printf ('\n  pressure = %.1f lbs/in^2',pb)
printf ('\n  upward pressure = %.1f lbs',pu)
printf ('\n  downward pressure = %.1f lbs',pd)
printf ('\n Resultant pressure = %.1f lbs',RP)
