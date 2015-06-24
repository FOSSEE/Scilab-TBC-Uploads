clc
//initialisation of variables
u1= 1200 //ft/sec
r= 1.4
R= 53.3 //ft lbf/lb K
g= 32.2 //ft/sec^2
T= 90 //F
//CALCULATIONS
M= u1/sqrt(r*R*g*(460+T))
//RESULTS
printf ('Match number = %.3f ',M)
