
clc
printf("\n")
//Given
OC=9//inches
CP=36//inches
XC=12//inches
X=40//degrees
CM=6.98//from the scaled figure
N1=240//rpm
N2=240//rpm (instantaneous) with angular aceleration (ao) 100 rad/s^2
ao=100 //rad/s^2
w=(%pi*N1/30)
a=w^2*(OC/12)
printf("Centripetal acceleration = %.f ft/s^2\n",a)
Wr=w*CM/CP//rad/s^2
f1=Wr^2*(CP/12)//centripetal component of acceleration of p realtive to C
//Solution a)
//given from fig 58(a)
tp=296 
cp=306
ox=422
f2=tp //Tangential component of acceleration of p realtive to C
f3=cp//acceleration of p realtive to C
fx=ox//acce;eration of x
ar=f2/(CP/12)//angular acceleration of rod
printf("Case a) \nap= %.f ft/s^2,\nax= %.f ft/s^2 and\nar= %.1f rad/s^2 \n",f3,fx,ar)
//Solution b)
//given from fig 58(b)
oc1=474
oc=480
pt=238
pc=246
xo=452
f4=pt//Tangential component of acceleration of p realtive to C
f5=pc//acceleration of p realtive to C
Ar=f4/(CP/12)//angular acceleration of rod
f6=ao*(OC/12)//tangential component of acceleration realtive to C
Fx=xo//acce;eration of x
printf("Case b) \nap= %.f ft/s^2,\nax= %.f ft/s^2 and\nar= %.1f rad/s^2 \n",f4,Fx,Ar)
