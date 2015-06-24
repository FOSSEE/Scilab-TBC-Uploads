clc
//initialisation of variables
v= 50 //ft/sec
d= 2 //in
w= 62.4 //lbf/ft^3
v1= 10 //ft/sec
//CALCULATIONS
m= w*(%pi/4)*d^2*v/144
du= v1-v
F= m*du
F1= -F*(1/32.2)
//RESULTS
printf (' force exerted by thejet = %.1f lbf',F1)
