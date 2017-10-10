
clc
//soltuion
//given
do=25//mm
p=5//mm
W=10000//N
D1=50//mm
R1=25//mm
D2=20//mm
R2=10//mm
u=0.2//=tan(q)
u1=0.15
N=12//rpm
pb=5.8//N/mm^2
d=do-(p/2)//mm
Lead=2*p
//tan(a)=Lead/(%pi/d)=b=0.1414
b=0.1414
//P=W*tan(u+a)
//P=W*[(tan(a)+tan(q))/(1-tan(a)*tan(q))]
P=W*[(b+u)/(1-(b*u))]//N
R=(R1+R2)/2//mm
T=[(P*d/2)+(u1*W*R)]/1000//N-mm
printf("the torque acting is,%f N-m\n",T)
dc=do-p//mm
Ac=(%pi/4)*dc^2//mm^2
fc=W/Ac//N/mm^2
printf("the direct stress acting,%f N/mm^2\n",fc)
t=(16*T*1000)/(%pi*dc^3)//N/mm^2
printf("the shear stressa acting is,%f N/mm^2\n",t)
tmax=0.5*sqrt(fc^2 +4*t^2)//N/mm^2
printf("the stressa cting is ,%f N/mm^2\n",tmax)
//let n be number of threads
t1=p/2//mm//thickness of threads
n=W/(%pi*d*t1*5.8)
printf("the number of threads are,%f ",n)