//find...
clc
//soltuion
//given
//ref fig 17.10
do=12//mm
p=2//mm
u=0.12//tan(q)
u2=0.25
R=6//mm
P1=80//N
W=4000//N
d=do-p/2//mm
//tan(a)=p/(%pi*d)=0.058
b=0.058
//u1=u/(cos(B))=u/(cos(15)=0.124
u1=0.124
T1=W*[(b+u)/(1-(b*u))]*d/2//N-mm//torque acting
T2=u2*W*R//N-mm
T=T1+T2//N-mn
l=T/P1//mm
printf("the length of handle req is,%f mm\n",l)
dc=do-p//mm
//T=(%pi/16)*t*dc^2
t=16*T/(%pi*dc^3)//N/mm^2
M=P1*150//N-mm
fb=32*M/(%pi*dc^3)//N/mm^2
tmax=0.5*sqrt(fb^2 +4*t^2)//N/mm^2
printf("the max shear stressa cting is,%f N/mm^2\n",tmax)
h=25//mm
n=h/p
t1=p/2
pb=W/(%pi*n*t1*d)//N/mm^2
printf("the bearing pressure is,%f N/mm^2",pb)
