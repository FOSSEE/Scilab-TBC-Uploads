//Chapter-7,Example7_24,pg 7-67
V=240
I=10
Pf=0.8
t=1/60
K=600
E=V*I*Pf*t
E=E/10^3//in kWh
Rev=E*K//no. of revolutions 
printf("speed of disc\n")
printf("s=%.2f r.p.m\n",Rev)
del=90//for correct lag adjustment
del1=86*%pi/180//given in radian
phi=0//case-1 unity power factor
err=(sin(del1-phi)-cos(phi))/cos(phi)
err=err*100
printf("percentage error in case-1\n")
printf("err=%.2f \n",err)
Pf=0.5//case-2
phi=60*%pi/180//in radians
err=(sin(del1-phi)-cos(phi))/cos(phi)
err=err*100
printf("percentage error in case-2\n")
printf("err=%.2f \n",err)
