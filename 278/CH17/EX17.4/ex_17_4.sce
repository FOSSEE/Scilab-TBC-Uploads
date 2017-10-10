
clc
//soltuion
//given
d=100//mm
p=20//mm
W=18000//N
D1=250//mm
R1=125//mm
D2=100//mm
R2=50//mm
l=400//mm
u=0.15//=tan(q)
u1=0.20
Lead=2*p
//tan(a)=Lead/(%pi/d)=b=0.127
b=0.127
//P=W*tan(u+a)
//P=W*[(tan(a)+tan(q))/(1-tan(a)*tan(q))]
P=W*[(b+u)/(1-(b*u))]//N
R=(R1+R2)/2//mm
T=[(P*d/2)+(u1*W*R)]//N-mm
//let P1 be req force
P1=T/l//N
printf("the req force is,%f N\n",P1)
//P=W*tan(u-a)
//P=W*[(tan(a)-tan(q))/(1+tan(a)*tan(q))]
P2=W*[(u-b)/(1+(b*u))]//N
T2=[(P2*d/2)+(u1*W*R)]//N-mm
//let P3 be the force req
P3=T2/l//N
printf("the force req for lowering load is,%f N",P3)
