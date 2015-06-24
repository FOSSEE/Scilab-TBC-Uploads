//find..
clc
//soltuion
//given
d=2.6//m
n=15
B=22.5
q=2.967//rad
u=0.28
T=960//N
m=1.5//kg/m
//let N be speed
v=sqrt(T/(3*m))//m/s
N=(v*60)/(%pi*d)//rpm
printf("rpm is,%f rpm\n",N)
//for max power trans
Tc=T/3
T1=T-Tc
//log(T1/T2)=u*q*cosec(%pi/180*B)=0.9435
T2=T1/8.78//
P=(T1-T2)*v*n//W
printf("the power trans is,%f W\n",P)