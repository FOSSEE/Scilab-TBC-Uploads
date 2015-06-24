


clc
//initialisation of variables
mb=0.0246//ft
mt=0.0104//ft
dx=0.0104//ft
A1=2.082*10^-4//ft^2
A2=3.02*10^-4//ft^2
r1=0.0842//ft
r2=0.0910//ft
w=6280//rad/sec
cf=0.01
W=0.0212//lb/sec
T1=132//R
p1=11.5//lb/in^2
Vr1=422//ft/sec
g1=1.4
dT=8
T2=146.7//R
ndv=-313//ft/sec
R= 53.3
//CALCULATIONS
A=(A1+A2)/2
mp=2*(mb+mt)
r=(r1+r2)/2
dr=r2-r1
dA=A2-A1
k=dA/A
Vr2=sqrt(Vr1^2+2*w*w*r*dr-12020*dT)
dv=Vr2-Vr1
nVr2=Vr1+ndv
p2=W*R*T2/(2*144*A2*nVr2)
//RESULTS
printf ('Temperature= %.1f R',T2 )
printf ('\n pressure= %.1f lb/in^2',p2-0.1)
