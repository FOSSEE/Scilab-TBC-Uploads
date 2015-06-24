
clc
//initialisation of variables
V=10 //ft^3
T=600//F
v=200 //lbf/in^2
Sv=50 //lbf/in^2
p=200 //lbf/in^2
v1=8.515 //ft^3/lbm
m1=V/v1//lbm
hi=1322.1 //Btu/lbm
u1=1095.3 //Btu/lbm
m2=3.05 //lbm
u2=V/m2 //ft^3/lbm
he=1234.8 //Btu/lbm
//CALCULATIONS
m3=m1*(hi-u1)/(hi-he) //lbm
M=m2-m1 //lbm
//RESULTS
printf('The mass of steam that flows into the tank=% f lbm',M)
