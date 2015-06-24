//find
clc
//solution
//given
W=30//N
d=2//mm
n=18
C=6
D=12//mm
t=680//N/mm^2
G=80*1000//N/mm^2
K=(4*C-1)/(4*C-4)+(0.615/C)
t1=K*(8*W*C)/(%pi*d^2)
printf("tortional shear stress is,%f N/mm^2\n",t1)
k=G*d/(8*C^3*n)
printf("spring rate is,%f N/mm\n",k)
//let W1 force cause t shear
W1=t*%pi*d^2/(K*8*C)//N
printf("force to cause the body of spring to yield stregth is,%f N",W1)