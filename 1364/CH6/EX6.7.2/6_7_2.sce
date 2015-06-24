clc
//initialisation of variables
g= 32.2 //ft/sec^2
h= 12 //in
r= 10 //in
//CALCULATIONS
w= sqrt(2*g*(r/12)*(12/r)^2)*(60/(2*%pi))
P= h+(r/4)
//RESULTS
printf ('speed of rotation = %.f rev/min',w)
printf ('\n maximum pressure head = %.1f in of water',P)
