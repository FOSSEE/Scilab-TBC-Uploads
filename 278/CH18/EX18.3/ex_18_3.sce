//find..
clc
//soltuion
//given
t=0.009//m
b=0.25//m
d=0.9//m
N=336//rpm
q=2.1//rad
f=2//N/mm^2
rho=980//kg/m^3
u=0.35
v=%pi*N*d/60//m/s
a=b*t//area
Tt1=f*a*1000*1000//N
T=Tt1
printf("the value of Tt1 is,%f N\n",Tt1)
m=a*rho//mass/length
Tc=m*v^2//N
printf("the centrifugal tension is,%f N\n",Tc)
T1=T-Tc//N
//let T1 and  T2 be tneion on tight and slag side
//T1/T2=y
//log(T1/T2)=u*q=0.25*3.477=0.735
T2=T1/2.085//N
printf("the value of T2 is,%f N\n",T2)
P=(T1-T2)*v//W
printf("the poweer capacity is,%f W\n",P)
Tt2=T2+Tc//N
P1=(Tt1-Tt2)*v//W
printf("the power capcity by taking centrifugal force is,%f W\n",P1)