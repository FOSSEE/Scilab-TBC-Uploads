
//soltuion
//given
W1=18000//N
F=4000//N
do=60//mm
p=10//mm
D1=150//mm
R1=75//mm
D2=50//mm
R2=25//mm
u=0.1//=tan(q)
u1=0.12
pb=7//N/mm^2
//let P1 be max force
dc=do-p//mm
d=(do+dc)/2//mm
//tan(a)=p/(%pi*d)=0.058
b=0.058
W=W1+F//N
T1=W*[(b+u)/(1-(b*u))]*d/2//N-mm//torque aacting
R=(R1+R2)/2//mm
T2=u1*W*R//N-mm
T=T1+T2//N-mm
//T=2*P1*1000
P1=T/(2*1000)//N
printf("the force acting at end of lever is,%f N\n",P1)
W2=W1-F//N
T3=W2*[(u-b)/(1+(b*u))]*d/2//N-mm
T4=u1*W2*R//N-mm
T5=T4+T3//N-mm
P2=T5/(2000)//N
printf("the force acting in lowering the agte is,%f N\n",P2)
To=W*b*d/2//N-mm
eff=To/T
printf("the eff is,%f \n",eff)
//let n be numbr of theads
t=p/2//mm//thikness
n=(W)/(7*%pi*d*t)
printf("the numbr of threads are ,%f",n)