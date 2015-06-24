clc
//initialisation of variables
T= 15 //C
T1= -44 //C
P= 24//atm
s= 0.374
m= 6 //tonf
//CALCULATIONS
r= ((T+273)/(T1+273))^0.75
R= P/s
R1= r^2/R
F= R1*m*2240
//RESULTS
printf (' lift force= %.1f lbf',F)
