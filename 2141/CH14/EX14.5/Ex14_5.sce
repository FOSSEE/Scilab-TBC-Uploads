
clc
//initialisation of variables
k=1.4
g=32.17 //lbm-ft/sec^2
R=53.34 //ft-lbf/lbm-R
T=540 //R
t=1460 //f
//CALCULATIONS
c=sqrt(k*g*R*T)//ft/sec
C=sqrt(k*g*R*t)//ft/sec
//RESULTS
printf('The velocity of sound in air =% f ft/sec',C)
