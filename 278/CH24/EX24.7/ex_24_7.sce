//find..
clc
//solution
//given
n=4
//n1+n2=5
pb=0.127//N/mm^2
N=500//rpm
r1=125//mm
r2=75//mm
u=0.3
C=pb*r2//N/mm
W=2*%pi*C*(r1-r2)//N
R=(r1+r2)/2/1000//m
T=n*u*W*R//N-m
P=T*2*%pi*N/60
printf("power trans is,%f W\n",P)