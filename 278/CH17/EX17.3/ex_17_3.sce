//determine power and effi
clc
//soluiton
//given
do=55//mm
p=10//mm
W=400//N
D2=60//mm
D1=90//mm
R1=45//mm
R2=30//mm
u=0.15
u1=0.15//=//tan(q)
v=6//m/min
d=do-(p/2)//mm
//tan(a)=p/(%pi/d)=b=0.0637
b=0.0637
//P=W*tan(u+a)
//P=W*[(tan(a)+tan(q))/(1-tan(a)*tan(q))]
P=W*[(b+u)/(1-(b*u))]//N
R=(R1+R2)/2//mm
T=[(P*d/2)+(u1*W*R)]/1000//N-mm
N=v/0.01//rpm
w=2*%pi*N/60//rad/sec
P=T*w//W
printf("the power transmitted is,%f W\n",P)
//eff=To/T
eff=(W*b*(d/2))/(1000*T)
printf("the efficuency is,%f",eff)