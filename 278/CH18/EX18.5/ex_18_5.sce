//find..
clc
//soltuion
//given
d1=400//mm
r1=200//mm
d2=1600//mm
r2=800//mm
q1=2.5//rad
q2=3.78//rad
u1=0.3
u2=0.25
N1=700//rpm
P=22.5*10^3//W
t=0.005//mm
f=2.3*10^6//N/m^2
//ref fig 18.19
v=%pi*N1*d1/60//m/s
//let T1 and  T2 be tneion on tight and slag side
printf("the vel of belt is,%f m/s\n",v)
//P=(T1-T2)*v//W
//T1-T2=P/v=1530//N
//log(T1/T2)=u*q=0.25*3.477=0.75
//T2=T1/2.21//N
T1=2896//N
T2=1366//N
//let b is width
//m=A*rho=b*t*rho=5*b//kg/m
//Tc=m*v^2=1080*b
//T=T1+Tc=f*b*t
//11500*b=2896+1080*b
b=2896/(11500-1080)//m
printf("the widht of belt is,%f m\n",b)