clc
//Initialization of variables
ns=20 
eta=0.925
etah=0.94
BD=0.1
phie=0.72
g=32.2
alpha2=90 //degrees
//calculations
Cr=ns^2 /(67100*phie^2 *BD*eta)
c1cos=etah/(2*phie)
alpha=atan(Cr/c1cos)
C1=Cr/sin(alpha)
beta1=acotd((C1*cos(alpha) -phie)/(C1*sin(alpha)))
//results
printf("Alpha = %.2f degrees",alpha*180/%pi)
printf("\n Beta = %.2f degrees",beta1)
disp("part b")
h=402
n=600 //rpm
bhp=3600
ns=n*sqrt(bhp) /h^(5/4)
D=153.2*phie*sqrt(h) /n
B=BD*D
Dt=D*0.735
Ac=0.95*%pi*D*B
Vr=Cr*sqrt(2*g*h)
Q=Ac*Vr
//results
printf("\n Breadth= %.3f ft",B)
printf("\n depth D= %.3f ft",D)
printf("\n velocity Vr= %d ft/s",Vr)
printf("\n Flow rate Q= %.1f cfs",Q)
