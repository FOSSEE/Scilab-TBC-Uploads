//find..
clc
//soltuion
//given
n=2
B=15//deg
A=750*10^-6
u=0.12
rho=1200//kg/m^3
f=7*10^6//N/m^2
d=0.300//m
N=1500//rpm
m=A*rho//kg/m
v=(%pi*N*d)/60//m/s
Tc=m*v^2//N
q=%pi
printf("the centrifugl tension is,%f N\n",Tc)
T=f*A//N
printf("max tension is,%f N\n",T)
T1=T-Tc//N
//log(T1/T2)=u*q*cosec(%pi/180*B)=0.6335
T2=T1/4.3//N
P=(T1-T2)*v*n//W
printf("the power trans is,%f W\n",P)
//for max power tranfer
//let N1 be speed
//Tc1=T/3
//Tc1=m*v1^2
v1=sqrt(T/(3*m))//m/s
N1=(v1*60/(%pi*d))
printf("rpm of shaft at max power trans,%f rpm",N1)