//find..
clc
//soltuion
//given
x=4.8//m
d1=1.5//m
d2=1//m
To=3000//N
m=1.5//kg/m
u=0.3
N2=400//rpm
v=%pi*N2*d2/60//m/s
Tc=m*v^2
//let T1 and  T2 be tneion on tight and slag side
//To=(T1+T2+2*Tc)/2
//T1+T2=4677
//sin(a)=(r1-r2)/x=0.0521
a=(%pi/180)*3//rad
q=%pi-2*a//rad
printf("the angle of contact is,% f rad\n",q)
//log(T1/T2)=u*q=0.3*q=0.3965
//T2=T1/2.5//N
T1=3341//N
T2=1336//N
P=(T1-T2)*v
printf("the power transmitted is,%f W\n",P)
