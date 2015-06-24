//find..
clc
//solution
//given
P=100*1000//W
N=2400//rpm
T=500*1000//N-mm
pb=0.07//N/mm^2
u=0.3
ns=8
Ss=40//N/mm
//let r1 be outr and r2 be inner rad
//r1=1.25*r2
//C=0.07*r2
//W=2*%pi*0.07*r2(r1-r2)=0.11*r2^2//N
//R=(r1+r2)/2=1.125*r2
///T=n*u*W*R=0.074*r2^3//N-mm
r2=(T/0.074)^(1/3)//mm
r1=1.25*r2//mm
printf("inner and outr radii is,%f mm\,%f mm\n",r2,r1)
s=Ss*ns//N/mm
W=0.11*r2^2//N
printf("axial force is,%f N\n",W)
dx=W/s
printf("intial compresion is,%f mm\n",dx)
