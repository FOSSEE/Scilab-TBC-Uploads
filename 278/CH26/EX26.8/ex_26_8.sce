//find
clc
//solution
//given
D=150//mm
R=75//mm
d=50//mm
r=25//mm
p=0.8//N/mm^2
N=100//rpm
u=0.015
W=p*%pi*[R^2-r^2]//N
printf("load to be supported is,%f N\n",W)
T=(2/3)*u*W*[(R^3-r^3)/(R^2-r^2)]//N-mm
P=2*%pi*N*T/60000
printf("power loast in friction is,%f W\n",P)