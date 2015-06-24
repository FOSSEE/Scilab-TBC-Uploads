clc
//initialisation of variables
d= 2 //ft
a= 30 //degrees
p= 200 //ft
w= 62.3 //lbf/ft^3
//CALCULATIONS
T= (%pi/4)*(d^2/2240)*w*p*sqrt(2*(1-cosd(a)))
//RESULTS
printf (' Resultant static thrust= %.2f tonf',T)
