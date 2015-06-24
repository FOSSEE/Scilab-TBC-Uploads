clear
clc
//initialisation of variables
l= 140 //ft
P= 70 //percent
V= 3*10^8 //ft^3
w= 62.4 //lb/ft^3
SBD= 4.9*10^8 //ft^3
Q= 162 //cuses
s= 12.2*10^6 //ft^3/day
//CALCULATIONS
O= Q*w*l*(P/1000)/550
//RESULTS
printf ('Size of reservoir= %.2e ft^3',SBD)
printf ('\n output = %.f h.p ',O)
printf ('\n output = %.f h.p ',Q)
