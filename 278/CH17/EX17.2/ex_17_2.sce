//estimate Power
clc
//soltuion
//given
W=75000//N
v=300//mm/min
p=6//mm
do=40//mm
u=0.1//=tan(q)
d=do-(p/2)//mm
//tan(a)=p/(%pi/d)=b=0.0516
b=0.0516
//P=W*tan(u+a)
//P=W*[(tan(a)+tan(q))/(1-tan(a)*tan(q))]
P=W*[(b+u)/(1-(b*u))]//N
T=(P*d/2)/1000//N-m
N=v/p//rpm
w=2*%pi*N/60//rad/sec
P=T*w//W
printf("the power transmitted is,%f W",P)