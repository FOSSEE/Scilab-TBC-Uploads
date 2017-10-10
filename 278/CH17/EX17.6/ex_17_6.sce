//soltuion
//given
do=50//mm
p=8//mm
W=2500//N
D1=110//mm
R1=55//mm
D2=55//mm
R2=27.5//mm
N=30//rpm
u=0.15//=tan(q)
u2=0.12
//tan(a)=p/(%pi/d)=b=0.055
b=0.055
//u1=u/cos(B)=0.15/cos(14.5)=0.155
u1=0.155
//P=W*tan(u+a)
//P=W*[(tan(a)+tan(q1))/(1-tan(a)*tan(q1))]
P=W*[(b+u1)/(1-(b*u1))]//N
T1=(P*do/2)//N-mm
R=(R1+R2)/2//mm
T2=u2*W*R//N-mm
T=(T1+T2)/1000//N-m
Power=T*2*%pi*N/60//W
printf("the power req is %f W\n",Power)
To=W*b*do/2/1000//N-m
printf("the torque acting is %f N-m\n",To)
eff=To/T
printf("the eff is %f ",eff)