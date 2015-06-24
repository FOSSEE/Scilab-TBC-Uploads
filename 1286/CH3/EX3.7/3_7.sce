clc
//initialisation of variables
e=1.586//v
i=0.1444//amp
t=4*60//sec
m=0.3963//kg
T=1.219//k
wt=206.4
//CALCULATIONS
hg=e*i*t
c=hg/(m*T*4.18)
a=c*wt
printf(' atomic heat of lead= % 1f 1/k',a)
