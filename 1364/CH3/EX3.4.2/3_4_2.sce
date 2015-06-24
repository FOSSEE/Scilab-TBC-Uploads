clc
//initialisation of variables
dh= 1 //in
r= 1/40
s= 0.9
w= 62.3 //lb/ft^3
//CALCULATIONS
dpbyw= dh*((1+r)-s*(1-r))
dp= w*dpbyw/1728
//RESULTS
printf (' pressure difference = %.2e lbf/in^2 ',dp)


//Answer in the textbook is wrong
