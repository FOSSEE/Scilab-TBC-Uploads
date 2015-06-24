
clc
//initialisation of variables
v=15//ft^3
m=20 //lbm
M=24 //lbm/lb
T=540//R
//CALCULATIONS
R=1545/M //ft-lbf/lbm R
P=(m*R*T)/(144*v) //lbf/in^2
//RESULTS
printf('the presure=%f lbf/in^2',P)
