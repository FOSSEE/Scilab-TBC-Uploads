// Determine the velocity of flow theoretical head and power required to drive the pump
clc
Q=150e-3
d1=300e-3
d2=150e-3
n=500
g=9.8
Vf=(Q)/((%pi/4)*(d1^2-d2^2))
mprintf('\n Velocity of flow Vf=Q/A %f m/s',Vf)
D=(d1+d2)/2
mprintf('\n Peripherial velocity is calculated on the mean diameter D =%f m',D)
u=((2*%pi*n)/60)*(D/2)
H1=(u^2/g)-((u*Vf)/g)*(cotd(75)+cotd(70))
mprintf('\n Theoretical Head H = %f m',H1)
P=g*Q*H1
mprintf('\n Required power P = %f kw',P)
