clc 
//initialisation of variables
w= 62.4 //lb/ft^3
f= 0.005
Q= 100 //cuses
m= 40 //Rs
n= 0.75
n1= 0.065
K= 15 //Rs
//CALCULATIONS
d= ((5*w/(1.5*550*10))*n*f*Q^3*m/(K*n1))^(1/6.5)
//RESULTS
printf ('economical diameter of pipe line = %.3f ft ',d)
