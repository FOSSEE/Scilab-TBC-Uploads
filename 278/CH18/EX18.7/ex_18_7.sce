//find..
clc
//soltuion
//given
P=110*1000//W
d1=0.9//m
r1=0.45//m
d2=1.2//m
r2=0.6//m
v=20//m/s
x=3.6//m
u=0.3
s1=0.012
s2=0.012
rho=100//kg/m^3
//v=%pi*N1*d1/60*(1-s1)//m/s
N1=20/0.0466//rpm
//v*(1-s2)=%pi*N2*d2/60//m/s
N2=19.76*60/(%pi*1.2)//rpm
T=P*60/(2*%pi*N2)
//since there is 5% friction
Tn=1.05*T//net torque
//since belt is to designed for 20% overload
TN=1.2*Tn//N-m
//let T1 and  T2 be tneion on tight and slag side
//TN=(T1-T2)*r2
//T1-T2=TN/r2=7000/N
//sin(a)=(r2-r1)/x=2.4 deg
a=(%pi/180)*2.4//rad
q1=%pi-a//rad
printf("the angle of contact is,%f rad \n",q1)
//log(T1/T2)=u*q1=0.3*q1=0.918
//T2=T1/2.51//N
T1=11636//N
T2=4636//N
//let b is width
//m=A*rho=b*t*rho=15*b//kg/m
//Tc=m*v^2=6000*b
//T=T1+Tc=f*b*t
//37500*b=11636+6000*b
b=11636/(37500-6000)//m
printf("the widht of belt is,%f m\n",b)
L=%pi*(r1+r2)+2*x+(r1+r2)^2/x//m
printf("the length of belt is,%f m",L)