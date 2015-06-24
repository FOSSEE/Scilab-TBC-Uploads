//find
clc
//solution
//given
n=6
D=300//mm
R=150//mm
d=200//mm
r=100//mm
N=120//rpm
p=0.4//N/mm^2
u=0.05
W=p*%pi*n*[R^2-r^2]//N
printf("load to be supported is,%f N\n",W)
T=(2/3)*u*W*[(R^3-r^3)/(R^2-r^2)]//N-mm
P=2*%pi*N*T/60000
printf("power loast in friction is,%f W\n",P)