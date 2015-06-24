//find..
clc
//soltuion
//given
P=90000//W
N2=250//rpm
N1=750//rpm
d2=1//m
x=1.75//m
v=26.67//m/s
A=375*10^(-6)//m^2
rho=1000//kg/m^3
f=2.5//N/mm^2
B=17.5//deg
u=0.25
d1=N2*d2/N1//m
//sin(a)=(r2-r1)/x=0.1914
a=(%pi/180)*11.04
q=%pi-2*a//rad
printf("the angle of contact is,%f rad\n",q)
m=A*rho//kg/m
Tc=m*v^2//N
printf("the centrifugl tension is,%f N\n",Tc)
T=f*A*10^6//N
printf("max tension is,%f N\n",T)
T1=T-Tc//N
//log(T1/T2)=u*q*cosec(%pi/180*B)=0.9976
T2=T1/9.95//N
Ppb=(T1-T2)*v//W
printf("power tranmited per belt is,%f W\n",Ppb)
//n=P/Ppb//
printf("the number of belts are,%f \n",P/Ppb)
printf("number of belts are say 6\n")
n=6
r1=d1/2
r2=d2/2
L=%pi*(r2+r1)+2*x+(r2-r1)^2/x
printf("the length of belt is,%f m",L)