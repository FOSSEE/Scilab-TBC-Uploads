//find...
clc
//soltuion
//given
do=48//mm
p=8//mm
u=0.15//tan(q)
T=40000//N-mm
//let W be weigth
d=do-p/2//mm
Lead=3*p
//tan(a)=Lead/(%pi/d)=b=0.174
b=0.174
//u1=u/(cos(B))=u/(cos(15)=0.155
u1=0.155
//T1=W*[(b+u)/(1-(b*u))]*d/2//N-mm//torque aacting
//T=7.436*W
W=T/7.436//N
printf("the load acting is,%f N\n",W)
h=50//mm//heigth of nut
n=h/p//numbr of thread
t=p/2//thikness of therrad
pb=W/(%pi*n*t*d)//N/mm^2
printf("the bearing pressure is,%f N/mm^2",pb)
