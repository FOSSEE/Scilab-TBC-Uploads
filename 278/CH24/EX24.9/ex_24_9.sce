//find..
clc
//solution
//given
n1=3
n2=2
n=4
d1=240//mm
r1=120//mm
d2=120//mm
r2=60//mm
u=0.3
P=25000//W
N=1575//rpm
T=P*60/(2*%pi*N)*1000//N-mm
R=(2/3)*[(r1^3-r2^3)/(r1^2-r2^2)]//mm
//T=u*n*W*R=112*W
W=T/112//N
printf("load acting is,%f N\n",W)
ns=6//numbr of springs
csos=8//contact surface of spring
we=1.25//wear on each spring
Twe=we*csos/1000//total wear
Ss=13000//N/m//stiffness of spring
Rsf=Twe*Ss*ns//reduction
W1=W-Rsf
R1=(r1+r2)/2000
T=n*u*W1*R1//N-m
P=T*2*%pi*N/60//W
printf("power trans is,%f W\n",P)