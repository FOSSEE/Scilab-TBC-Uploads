clc 
//initialisation of variables
A= 2500 //acres
n= 20
Q= 40 //gal/head
C= 130
i= 1/3000
p = 7 //per cent
w= 62.4 //lb/ft^3
//CALCULATIONS
Q1= Q*50000*p/(60*100*60*w)
Q2= Q1+(A*4840*9/(12*24*60*60))
d= (Q2*8*sqrt(4/i)/(%pi*C))^0.4
//RESULTS
printf ('Diameter = %.3f ft ',d)
