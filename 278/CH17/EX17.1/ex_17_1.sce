//determine dia of the wheel
clc
//solution
//given
d=50//mm
p=12.5//mm
W=10000//N
D=60//mm
R=30//mm
u=0.15//tan(q)=u
u1=0.18
P1=100//N
//tan(a)=p/(%pi/d)=b=0.08
b=0.08
//P=W*tan(u+a)
//P=W*[(tan(a)+tan(q))/(1-tan(a)*tan(q))]
P=W*[(b+u)/(1-(b*u))]//N
T=(P*d/2)+(u1*W*R)//N-mm
//let D1 be dia of wheel
P1=100
//T=2*P1*D1/2=100*D1
D1=T/100//mm

printf("the dia of wheel is,%f mm\n",D1)
