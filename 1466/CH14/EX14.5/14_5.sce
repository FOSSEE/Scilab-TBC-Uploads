
clc
//initialisation of variables
p1=120//lb/in^2
T=288//k
R=96//ft-lb
g=1.404
g1=32.2//ft/sec^2
n=0.528
//CALCULATIONS
v1=(R*T)/(144*p1)
k=g/(g-1)
w=(%pi*sqrt(2*g1*k*p1*v1*144*(n^(2/g))*(1-(n)^(1/k))))/(4*144*v1)
//RESULTS
printf (' weight of maximum discharge in pounds per second= %.2f lb/sec',w)
