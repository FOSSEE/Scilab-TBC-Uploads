clc
//initialisation of variables
w= 3 //ft
h= 15 //ft
d= 140 //lbs/ft^3
x= 6 //in
W= 62.4 //lbs/ft^3
//CALCULATIONS
W1= h*w*d
h= (W1*x*6/(W*12))^(1/3)
//RESULTS
printf (' height of water rise = %.2f ft',h)
