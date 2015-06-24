clc
//initialisation of variables
p1=60//lb/in^2
Hd2=12//C.H.U
Vs2=5//ft^3/lb
d=1/12
Hd=23.2//C.H.U
t3=-84//c
k=0.85
//CALCULATIONS
p2=0.528*p1
v2=300*sqrt(Hd2)
W=%pi*d*d*v2/(4*Vs2)
net=0.85*Hd
Vs3=8.7//ft^3/lb
v3=300*sqrt(k*Hd)
a3=W*Vs3/v3
d3=sqrt(a3*144*4/%pi)
//RESULTS
printf ('\n critical pressure at throat= % 2f lb/in^2',p2)
printf ('\n velocity at the throat= % 2f ft/sec',v2)
printf ('\n discharge in pounds per second= % 2f lb/sec',W)
printf ('\n final velocity of air leaving the nozzle= % 2f ft/sec',v3)
printf ('\n required diameter at mouth= % 2f in',d3)
