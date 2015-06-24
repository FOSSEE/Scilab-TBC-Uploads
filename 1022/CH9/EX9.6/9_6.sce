clc
//initialisation of variables
m= 10//lbm
R= 48.28 //lbf/lbm R
T= 120 //F
V= 150 //ft^3
m1= 15 //lbm
R1= 55.15 //lbf/lbm R
//CALCULATIONS
P1= (m*R*(T+460))/V
P2= (m1*R1*(T+460))/V
Pm= P1+P2
V1= (m*R*(T+460))/Pm
V2= (m1*R1*(T+460))/Pm
Vm= V1+V2
//RESULTS
printf ('Total volume= %.f ft^3 ',Vm)
