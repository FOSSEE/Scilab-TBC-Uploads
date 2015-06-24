//find..
clc
//solution
//given
n1=3
n2=2
d2=120//mm
r2=60//mm
pmax=0.1//N/mm^2
P=25000//W
N=1575//rpm
u=0.3
T=P*60/(2*%pi*N)*1000//N-mm
C=pmax*r2//N/mm
//W=2*%pi*C(r1-r2)=37.7(r1-60)//N
//R=(r1+r2)/2=0.5*r1 +30
n=n1+n2-1
//T=n*u*R*W=22.62*r1^2-81432
r1=sqrt((T+81432)/22.62)
printf("outr dia is,%f mm\n",r1)