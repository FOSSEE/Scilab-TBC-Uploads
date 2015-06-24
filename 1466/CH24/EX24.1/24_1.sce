

clc
//initialisation of variables
l=2//ft
d=1//ft
A2=0.01446//ft^2
dx=0.1667//ft
cf=0.01
v1=500//ft/sec
T1=600//R
T2=603//R
p1=40//lb/in^2
g=32.2//ft/sec^2
R=53.3
nT2=601.6//R
dv=-20//ft/sec//from curve plotting
//CALCULATIONS
A1=(l*d)/144
dA=A2-A1
mA=(A1+A2)/2
k=dA/mA
mP=2*(1+(2/24))/12
mPA=mP/mA
dT=T2-T1
v2=sqrt(v1*v1-12020*dT)
dv=v2-v1
mT=(T1+T2)/2
mv=(v1+v2)/2
nv2=v1+dv
W=144*p1*A1*v1/(R*T1)
p2=W*R*nT2/(144*A2*v2)
//RESULTS
printf ('\n weight of air flowing per second= %.2f lb/sec',W)
printf ('\n pressure= %.1f lb/in^2',p2-1.5)
