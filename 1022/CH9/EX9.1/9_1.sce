clc
//initialisation of variables
v= 15 //ft^3
m= 20 //lbm
T= 80 //lbf
P= 320 //psia
//CALCULATIONS
R= P*144*v/(m*(T+460))
M= 1545/R
//RESULTS
printf ('Molecular weight of the gas = %.1f lbm/lbm mol',M)
