//find..
clc
//soltuion
//given
b=0.100//m
t=0.01//m
v=16.67//m/s
//T1-T2=1.8 *T2
f=1.6//N/mm^2
rho=1000//kg/m^3
//let T1 and  T2 be tneion on tight and slag side
T=f*b*t*10^6//N//max tension
m=0.1*0.01*1000//kg/m
Tc=m*v^2//N
T1=T-Tc//N
T2=T1/2.8//N
P=(T1-T2)*v
printf("the power transmitted is,%f W\n",P)
vm=sqrt(T/(3*m))//m/s
Tc1=T/3//N
T11=T-Tc1
T21=T11/2.8
P1=(T11-T21)*vm
printf("the max power tans is,%f W\n",P1)