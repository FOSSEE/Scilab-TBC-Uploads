clc
//initialisation of variables
P= 1 //atm
T= 60 //F
P1= 4 //atm
e= 1.3
R= 55.15 //lbf/lbm R
m= 778
//CALCULATIONS
T2= (T+460)*(P1/P)^((e-1)/e)
W= R*(T2-(T+460))/(1-e)
W1= W/m
//RESLUTS
printf ('Work associated with the process= %.1f Btu/lbm ',W1)
