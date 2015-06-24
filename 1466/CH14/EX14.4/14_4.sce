
clc
//initialisation of variables
g=1.4
R=96//ft-lb
p1=140//lb/in^2
p2=130//lb/in^2
T=288//k
r=6//in
g1=32.2//ft/sec^2
//CALCULATIONS
v1=R*T/(144*p1)
v2=v1*(p1/p2)^(1/g)
k=g/(g-1)
k1=p2/p1
w=(%pi*sqrt((2*g1*k*v1*p1*144*(1-(k1)^(1/k)))/(1-((k1)^2/g)/81)))/(v2*4*r*r)
//RESULTS
printf (' weight of air flowiing per second= %.2f Lb/sec',w)
