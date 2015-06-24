
clc
//initialisation of variables
g=32.2//ft/sec^2
p0=8.56//lb/in^2
A=2.082*10^-4//ft^2
W=0.0212//lb/sec
v0=1057.6//ft/sec
T1=213.7//R
T2=206//R
//CALCULATIONS
b=2*g*778*0.24
k1=sqrt(b)
c=144*A*g/W
k=p0+v0/c
v1=k1*sqrt(T1-T2)
p1=k-v1/c
//RESULTS
printf ('\n velocity= %.f ft/sec',v1 )
printf ('\n pressure= %.2f lb/in^2',p1 )
