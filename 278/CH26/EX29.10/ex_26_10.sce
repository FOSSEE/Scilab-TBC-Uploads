//find
clc
//solution
//given
d=300//rpm
r=150//rpm
W=200*1000//N
N=75//rpm
u=0.05
p=0.3//N/mm^2
D=1.4*d//mm
R=D/2
n=W/(p*%pi*(R^2-r^2))
printf("numbr of collar is,%f ",n)
T=(2/3)*u*W*[(R^3-r^3)/(R^2-r^2)]//N-mm
P=2*%pi*N*T/60000
printf("power loast in friction is,%f W\n",P)
printf("heat generated at ba=earing is,%f W\n",P)
