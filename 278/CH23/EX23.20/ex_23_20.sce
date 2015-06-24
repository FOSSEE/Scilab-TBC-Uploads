//find
clc
//solution
//given
dx1=15//mm
n1=10
D1=40//mm
d1=5//mm
n2=8
D2=30//mm
d2=4//mm
W=400//N
G=84000//N/mm^2
//comprssion of each spring
P1=dx1*G*d1^4/(8*D1^3*n1)//N
R=W-P1//remaining load istaken by both spring
//P2=P1*dx2/dx1=10.27*dx2
//dx2=8*W2*D2^3/(G*d2^4)=0.08*W2
//W2=12.5*dx2
//P2+W2=W-P1
dx2=(W-P1)/(22.77)//mm
P2=10.27*dx2
printf("total deflection is,%f mm\n",dx1+dx2)
W1=P1+P2
printf("load on outr spring is,%f N\n",W1)
W2=12.5*dx2
printf("load shared by innr spring is,%f N\n",W2)
C1=D1/d1
C2=D2/d2
K1=(4*C1-1)/(4*C1-4)+(0.615/C1)
K2=(4*C2-1)/(4*C2-4)+(0.615/C2)
t1=K1*8*W1*D1/(%pi*d1^3)//N/mm^2
t2=K2*8*W2*D2/(%pi*d2^3)//N/mm^2
printf("stress induced in outr spring is,%f N/mm^2\n",t1)
printf("strss induce in iner spring is,%f N/mm^2\n",t2)
