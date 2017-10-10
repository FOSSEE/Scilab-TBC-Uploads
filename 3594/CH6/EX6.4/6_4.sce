
clc
//given
ratio=1.25
u=.675
P=12//hp
//W=P*%pi*(r1^2-r2^2); Total axal thrust.
//M=u*W*(r1+r2); Total friction moemnt 
//reducing the two equations and using ratio=1.25(r1=1.25*r2) we get, M=u*21.2*r2^3
ReqM=65//lb ft 
RM=ReqM*12//lb in
r2=(RM/(u*P*%pi*(1.25^2-1)))^(1/3)
r1=1.25*r2
d1=r1*2
d2=r2*2
printf("The dimensions of the friction surfaces are:\nOuter Diameter= %.1f in\nInner Diameter= %.1f in\n",d1,d2)
