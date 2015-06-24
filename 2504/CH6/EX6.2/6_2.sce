clc
//initialisation of variables
clear
w= 0.0765 //lbm/ft^3
v1= 120 //ft/sec
g= 32.2 //ft/sec^2
//CALCULATIONS
dp= w*v1^2/(2*2*g)
//RESULTS
printf ('Difference in pressure= %.2f lbf/ft^2',dp)
