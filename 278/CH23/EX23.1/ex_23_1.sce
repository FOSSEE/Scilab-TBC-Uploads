//find
clc
//solution
//given
D=50//mm
d=5//mm
n=20//mm
W=500//N
C=D/d
Ks=1+(1/(2*C))
t=Ks*[8*W*D/(%pi*d^3)]//N/mm^2
printf("shear stress acting is,%f N/mm^2",t)