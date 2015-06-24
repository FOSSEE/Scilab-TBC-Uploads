//find..
clc
//soltuion
//given
d1=0.450//rpm
r1=0.225//m
d2=0.2//m
r2=0.1//m
N1=200//rpm
x=1.95//m
T1=1000//N
u=0.25
//ref fig 18.17
L=%pi*(r1+r2)+2*x+(r1+r2)^2/x//m
printf("the length of belt is,%f m\n",L)
//sin(a)=(r1+r2)/x=0.1667
//a=9.6//deg
a=(%pi/180)*9.6//rad
q=%pi+(2*a)//rad
printf("te angle of contact is,%f rad\n",q)
//let T1 and  T2 be tneion on tight and slag side
//T1/T2=y
//log(T1/T2)=u*q=0.25*3.477=0.8693
T2=T1/2.387//N
v=%pi*N1*d1/60//m/s
P=(T1-T2)*v
printf("the power transmitted is,%f W\n",P)