//find size of bolts
clc
//solution
//given
n=4
d=500//mm
r=250//mm
D=650//mm
R=325//mm
W=400*10^3//N
L=350//mm
ft=60//N/mm^2
//let dc be core dia
pi=3.14
Wt=[(2*W*L)*{R+r*cos(pi/n)}]/{n*(2*R^2 +r^2)}
printf("the value of load acting is,%f N\n",Wt)