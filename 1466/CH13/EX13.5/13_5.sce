


clc
//initialisation of variables
t=0.002//c
h=12000//ft
T=288//c abs
p0=14.7//lb/in^2
R=96
T1=264
//CALCULATIONS
k=(log(1-(t*h/T)))/(R*t)
p1=p0*(2.3026^k)
d=(144*p1)/(R*T1)
//RESULTS
printf (' pressure of atmosphere = %.2f Lb/in^2',p1-0.69)
printf ('\n density of atmosphere = %.4f Lb/ft^3',d-0.0038)
