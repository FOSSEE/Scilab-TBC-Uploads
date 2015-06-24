//det...
clc
//solution
//given
do=50//mm
u=0.15//tan(q)
p1=16//mm
p2=12//mm
tmax=28//N/mm^2
d1=do-p1/2
d2=do-p2/2
//tan(a1)=p/(%pi/d1)=b1=0.1212
b1=0.1212
//tan(a2)=p/(%pi/d2)=b2=0.0868
b2=0.0868
//let W be load
//T1=W*[(b1+u)/(1-(b1*u))]*d1/2=5.8*W//N-mm
//T2=W*[(u-b2)/(1+(b2*u))]*d2/2=-.37*W//N-mm
//T=T1-T2=7.17*W
//To=W*(p1-p2)/(2*%pi)=0.636*W
//eff=To/T
eff=0.636/7.17
printf("the eff is,%f \n",eff)
dc1=do-p1
//fc=W/Ac1=W/(%pi/4 * dc1^2)=W/908//N/mm^2
//t1=16T/(%pi*dc1^3)=W/1331//N/mm^2
//tmax=0.5*sqrt(fc^2 + 4*t1^2)=0.5*1.863*10^-3*W
W=tmax/(0.5*1.863*10^-3)//N
printf("the load acting is,%f N",W)