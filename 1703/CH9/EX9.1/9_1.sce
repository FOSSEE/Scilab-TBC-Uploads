clc
//initialisation of variables
clear
d= 2 //in
V= 210 //ft/sec
V1= 50 //ft/sec
g= 32.2 //ft/sec^2
w= 62.4 //lb/ft^3
//CALCULATIONS
M= %pi*V*w/(4*36*g)
F= M*V
dV= V-V1
M1= %pi*dV*w/(4*36*g)
F1= M1*dV
W= F1*V1
F2= M*dV
W1= F2*V1
//RESULTS
printf ('Force on plate = %.f lb',F+1)
printf ('\n Force on plate = %.f lb',F1)
printf ('\n Work done/sec = %.f ft-lb/sec',W)
printf ('\n Force on plate = %.f lb',F2)
printf ('\n Work done/sec = %.f ft-lb/sec',W1)

//The answer is a bit different due to rounding off error in textbook

