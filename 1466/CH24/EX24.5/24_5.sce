
clc
//initialisation of variables
in=630//pound/min
T0=460+60//R
cp=0.24
J=778
g=32.2//ft/sec^2
g1=1.4
T1=450//R
ar=0.262//ft^2
nT1=498//ft/sec
R=53.3
nT1=489//R
//CALCULATIONS
W=in/60
v1=sqrt((T0-T1)*2*g*J*cp)
p1=W*R*T1/(144*ar*v1)
nv1=sqrt((T0-nT1)*2*g*J*cp)
np1=W*R*nT1/(144*ar*nv1)
//RESULTS
printf ('\n velocity= %.f ft/sec',nv1) 
printf ('\n pressure= %.1f lb/in^2',np1) 
