clc
clear
//Initialization of variables
x=10 //in of mercury
sg=13.6 //g/cc
d1=8 //in
d2=4 //in
g=32.2 //ft/s^2
//calculations
vdiff=x/12 *sg- x/12
Vts=vdiff/(1-(d2/d1)^4)
Vt=sqrt(2*g*Vts)
Q=Vt*%pi/4 *(d2/12)^2
//results
printf("Discharge = %.2f ft^3/s",Q)
