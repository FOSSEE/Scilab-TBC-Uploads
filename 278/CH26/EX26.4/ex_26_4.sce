//find
clc
//solution
//given
d=0.15//m
W=10000//N
N=1500//rpm
//l=1.5*d
c=0.15//mm
Z=0.011
l=1.5*d*1000//mm
p=W/(l*d*1000)//N/mm^2
u=(33/10^8)*(Z*N/p)*(d*1000/c)+0.002
printf("coefficient of friction is,%f\n",u)
V=%pi*d*N/60//m/s
Qg=u*W*V//W
printf("power wasted in friction is,%f W\n",Qg)

