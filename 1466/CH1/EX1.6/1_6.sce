clc
//initialisation of variables
dh= 2 //in
d= 13.6 //kg/m^3
w= 62.4 //lbf/ft^3
//CALCULATIONS
x= d*dh-dh
P= w*x/(144*12)
//RESULTS
printf (' presure = %.2f Lb/in^2',P)
