
clc
//given
P=6 //tons
u=0.05
theta=60//degrees
CP=80
Stroke=16//in
OC=Stroke/2
r1=7//in
r2=15//in
r3=4.4//in
//Radius of friction circle
ro=u*r1
rc=u*r2
rp=u*r3
phi=asind(OC*sin((theta)*%pi/180)/CP)
alpha=asind((rc+rp)/CP)
//a) without friction
Qa=P/cos((phi)*%pi/180)
Xa=OC*cos((30-phi)*%pi/180)//tensile force transmitted along the eccentric rod when friction is NOT taken into account
Ma=Qa*Xa/12
//b) with friction
Qb=P/cos((phi-alpha)*%pi/180)//tensile force transmitted along the eccentric rod when friction is taken into account
Xb=OC*cos((30-(phi-alpha))*%pi/180)-(rc+ro)
Mb=Qb*Xb/12
n=Mb/Ma
printf("Turning moment applied to OC:\na)Without friction= %.2f ton.ft\nb)With friction(u=0.05)= %.2f ton.ft",Ma,Mb)
printf("\nThe efficiency of the mechanism is %.2f ",n)
