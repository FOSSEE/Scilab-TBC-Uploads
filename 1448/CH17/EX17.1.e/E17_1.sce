clc
//Initialization of variables
mH=1.673*10^-27 //kg
mCl=5.807*10^-26 //kg
R=127.4 *10^-12//m
//calculations
mu=mH*mCl/(mH+mCl)
I=mu*R^2
B=1.05457*10^-34 /(4*%pi*I)
f=2*B
//results
printf("Frequency of transistion = %.1f GHz",f/10^9)
