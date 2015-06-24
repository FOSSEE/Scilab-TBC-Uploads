clc
//initialisation of variables
A= 5 //ft^2
c= 0.6
g= 32.2 //ft/sec^2
H= 6 //in
//CALCULATIONS
Q= 0.6*(8/15)*60*sqrt(2*g)*(H/12)^2.5
u= 0.455/A
h= u^2/(2*g)
//RESULTS
printf (' Discharge= %.1f ft^3/sec',Q)
printf (' \n mean approach velocity = %.3f ft/sec',u)
printf (' \n kinetic head = %.6f ft',h)
