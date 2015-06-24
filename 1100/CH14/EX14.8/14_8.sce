clc
//initialisation of variables
h= 19500 //Btu
w= 700 //lb/hr
Q= 10240000
//CALCULATIONS
Q1= w*h
e= Q/Q1
//RESULTS
printf ('Efficiency= %.2f ',e)
