//find
clc
//solution
//given
n=3
m=6
Dw=50//mm
Tg=30
q=(%pi/180)*14.5
u=0.05
//tan(y)=m*n/Dw
y=(%pi/180)*19.8 //rad
printf("lead angle is,%f deg\n",y)
vr=Tg/n
printf("velocity ratio is,%f \n",vr)
Dg=m*Tg
x=(Dw+Dg)/2
printf("centre diat is,%f mm\n",x)
eff=tan(y)*(cos(q)-u*tan(y))/(cos(q)*tan(y)+u)
printf("effi is,%f \n",eff)
