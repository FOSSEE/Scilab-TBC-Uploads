//Chapter-10,Example10_21,pg10_61
P=4
f=50
R2=0.25
X2=0.55
Ns=120*f/P
N1=1440
s1=(Ns-N1)/Ns
Rex=0.2
R21=R2+Rex
//T1 at s1=T2 at s2
//0.3025*s2^2-2.8342*s2+0.2025=0, s1=0.04
a=0.3025
b=-2.8342
c=0.2025
s2=(-b-sqrt((b^2)-4*a*c))/(2*a)//neglecting higher value
N2=Ns*(1-s2)
printf("new speed of motor\n")
printf("N2=%.f r.p.m",N2)
