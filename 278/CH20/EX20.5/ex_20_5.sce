//find..
clc
//soltuion
//given
P=20000//W
d1=0.25//m
N1=1800//rpm
d2=0.9//m
x=1//m
B=20//deg
u=0.2
rho=1110//kg/m^3
f=2.1//N/mm^2
A=230*10^-6//m^2
//sin(a)=(r2-r1)/x=0.325
a=(%pi/180)*18.96
q1=%pi-2*a//rad
q2=%pi+2*a
//since uq for flat pulley si smalll,therfore desing is flat pulley based
v=(%pi*N1*d1)/60//m/s
m=A*rho//kg/m
Tc=m*v^2//N
printf("the centrifugl tension is,%f N\n",Tc)
T=f*A*10^6//N
printf("max tension is,%f N\n",T)
T1=T-Tc//N
//log(T1/T2)=u*q2=0.3304
T2=T1/2.14//N
Ppb=(T1-T2)*v//W
printf("power tranmited per belt is,%f W\n",Ppb)
//n=P/Ppb//
printf("the number of belts are,%f \n",P/Ppb)
printf("number of belts are say 5\n")
n=5