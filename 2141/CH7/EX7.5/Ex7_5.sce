
clc
//initialisation of variables
v=0.01608 //ft
P1=100 //lbf/in^2
P2=1000 //lbf/in^2
//CALCULATIONS
W=v*(P2-P1)*144/778//Btu/lbm
//RESULTS
printf('The work per pound to pump water isentropically =% f Btu/lbm',W)
