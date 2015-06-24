clc
//initialisation of variables
clear
a= 6 //degrees
r= 1.5
l= 100 //ft
f= 0.025
K= 0.15
//CALCULATIONS
R= r^4-1
R1= cotd(a/2)*(1-(1/r))
p1= f*l
p2= 2.5*(l-p1)/l
p3= (1-r^2)^2
p4= K*p3
pt= p4+p2
//RESULTS
printf ('lowest ratio = %.2f',R)
printf ('\n contribtuion of friction in pipe = %.1f lbf/ft^2',p1)
printf ('\n contribtuion of diffuser in pipe = %.3f lbf/ft^2',p2)
printf ('\n stagnant pressure drop = %.3f lbf/ft^2',p3)
printf ('\n contribtuion of friction in pipe after reduction = %.3f lbf/ft^2',pt)
