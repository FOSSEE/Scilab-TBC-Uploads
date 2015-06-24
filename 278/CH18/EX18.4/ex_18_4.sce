//find..
clc
//soltuion
//given
P=30000//W
d=1.5//m
N=300//rpm
q=2.88//rad
u=0.3
t=0.0095//m
rho=1100//kg/m^3
f=2.5*10^6//N/m^2
//let T1 and  T2 be tneion on tight and slag side
v=%pi*N*d/60//m/s
printf("the vel of belt is,%f m/s\n",v)
//P=(T1-T2)*v//W
//T1-T2=P/v=1273//N
//log(T1/T2)=u*q=0.25*3.477=2.375
//T2=T1/2.375//N
T1=2199//N
T2=926//N
//let b is width
//m=A*rho=b*t*rho=10.45*b//kg/m
//Tc=m*v^2=5805*b
//T=T1+Tc=f*b*t
//23750*b=2199+5805*b
b=2199/(23750-5805)//m
printf("the widht of belt is,%f m\n",b)