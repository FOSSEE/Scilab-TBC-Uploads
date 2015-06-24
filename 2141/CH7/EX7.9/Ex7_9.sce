
clc
//initialisation of variables
P1=14.7 //lbf/in^2
P2=60 //lbf/in^2
T1=520 //R
n=1.3 //constant
T=1.383
R=55.15//ft
w=-47.0//Btu/lbm
//CALCULATIONS
T2=T1*T//R
Q=0.177*(T2-T1)+w//Btu/lbm
//RESULTS
printf('The work and heat transfer per pound =% f Btu/lbm',Q)
