

clc
//initialisation of variables
clear
d= 4 //ft
h= 7 //ft
W= 2500 //lb
OG= 3.5
OB= 1.55 //ft
//CALCULATIONS
V= W/d^3
D= V/(%pi*(d/2)^2)
I= %pi*d^4/64
BM= I/V
BG= OG-OB
T= sqrt((W*OG-%pi*d^4)*d^4*2*%pi)-W 
//RESULTS
printf ('Minimum tension in chain = %.f lb',T)
