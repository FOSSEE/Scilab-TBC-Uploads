
clc
//initialisation of variables
t=0.001/12//ft
n=30//rpm
ne=0.0032
pi=22/7
D=1/3
l=2/3
//CALCULATIONS
vt=ne*pi*pi*D^3*l*n/(120*t)
//RESULTS
printf (' viscious torque= %.2f lb-ft',vt)
