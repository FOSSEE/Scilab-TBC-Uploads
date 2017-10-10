clc
//initialisation of variables
a=6//m^3
w=9.33//m
d=600//m
k=33//m
//CALCULATIONS
R=a/w//m
S=1/d
Q=(k*(a)*(R)^2/3*(S)^1/2)*10//m^3/s
//RESULTS
printf('The Chezy Manning equation is=% f m^3/s',Q)
