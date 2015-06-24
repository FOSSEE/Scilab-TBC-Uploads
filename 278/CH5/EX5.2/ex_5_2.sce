//find 1.)load applied 2.) twist angle(q)
clc
//solution
//given 
d=35//mm//diametr of shaft
r=17.5//mm
l=1200//mm//length of rod
D=500//mm
R=250//mm
C=80*10^3//N/mm^2//modulus of rigidity
t=60//N/mm^2//tortionsl streess
//let W bw load applied
//T=R*W //torque
//T=250*W//N-mm
pi=3.14
J=(pi/32)*(d)^4//mm^4
//T/J=t/r
//(250*W)/J=(t/r)
W=(t/r)*J/250//N
T=R*W
q=(T*l)/(C*J)//degree
printf("load applied is,%f N\n",W)
printf("the angle of twist is,%f degree",q)
