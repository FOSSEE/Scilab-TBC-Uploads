
clc
//initialisation of variables
dv=360//ft/sec
v1=1564//ft/sec
H1=1188//B th u
g=32.2//ft/sec^2
J=778
cf=0.005
p=0.12//ft
A=8.75*10^-4//ft^2
p1=67//lb/in^2
dx=0.0234//ft
A1=8.5*10^-4//ft^2
W=0.203//lb/sec
g=32.2//ft/sec^2
q2=0.989
Vs2=8.902//ft^3/lb
A2=9*10^-4//ft^2
//CALCULATIONS
v2=v1+dv
H2=H1-((v2^2-v1^2)/(2*g*J))
p2=p1-(W*(dv+(cf*p*dv*dx/(2*A))))/(144*A1*g)
W=(A2*v2)/(q2*Vs2)
nv2=1866//ft/sec
np2=51.2//lb/in^2
nT2=742.2//R
nVs2=8.331//ft^3/lb
nq2=0.99
nH2=1167.5//b th u
vs2=72.5*sqrt(np2*nq2*nVs2)
Ma2=v2/vs2
//RESULTS
printf ('velocity = %.2f ft/sec',nVs2 )
printf ('\n Ma2 = %.2f ',Ma2-0.04)
