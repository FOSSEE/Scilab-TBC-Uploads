clc
clear
//Initialization of variables
yc=2 //ft
g=32.2 //ft/s^2
d=10 //ft
gam=62.4
rho=1.94
B=10 //ft
//calculations
Vc=sqrt(g*yc)
Ac=yc*d
Q=Vc*Ac
y1=5.88 //ft
y2=0.88 //ft
V1=2.73 //ft/s
V2=18.25 //ft/s
Nf1=0.198
Nf2=3.43
F= 0.5*gam*y1^2 *B - 0.5*gam*y2^2 *B - Q*rho*V2 +Q*rho*V1
//results
printf("Discharge in the channel = %.1f ft^3/s",Q)
printf("\n Depth of the channel at upstream and downstream = %.2f ft and %.2f ft",y1,y2)
printf("\n froude numbers at upstream and downstream = %.3f and %.3f",Nf1,Nf2)
printf("\n Force applied = %d lb",F)
