//find..
clc
//solution
//given
n=2
P=25000//W
N=3000//rpm
u=0.255
//d1/d2=1.25
pmax=0.1//N/mm^2
T=P*60/(2*%pi*N)*1000//N-mm
//C=pmax*r2
//W=2*%pi*pmax*r2*(r1-r2)=0.157*r2//r1/r2=1.25
//R=(r1+r2)/2=1.125*r2
///T=n*u*W*R=0.09*r2^3//N-mm
r2=(T/0.09)^(1/3)//mm
r1=1.25*r2
d1=2*r1//mm
d2=2*r2//mm
W=2*%pi*0.1*r2*(r1-r2)//N
printf("outr dia is,%f mm\n",d1)
printf("nner dia is,%f mm\n",d2)
printf("axial thrust is,%f N\n",W)
