clc
//initialisation of variables
p= 14.7 //lbf/in^2
p1= 5 //lbf/in^2
w= 62.3 //lbf/ft^3
h= 30 //ft
//CALCULATIONS
hmax= (p-p1)*144/w
hmin= h-hmax
//RESULTS
printf (' Minimum depth of the water= %.1f ft',hmin)
