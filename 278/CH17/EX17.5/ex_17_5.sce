//find work done
clc
//soltuion
//given
p=10//mm
d=50//mm
W=20000//N
D1=60//mm
R1=30//mm
D2=10//mm
R2=5//mm
u=0.08//=tan(q)
u1=u
//tan(a)=p/(%pi/d)=b=0.0637
b=0.0637
//P=W*tan(u+a)
//P=W*[(tan(a)+tan(q))/(1-tan(a)*tan(q))]
P=W*[(b+u)/(1-(b*u))]//N
T=(P*d/2)/1000//N-m
N=170/10
Wd1=T*2*%pi*N//N-m
//wen load rotates with th screw
printf("the workdone in lifting is,%f N-m\n",Wd1)
//eff1=tan(a)/(tan(a+q))
eff1=b*(1-b*u)/(b+u)
printf("the eff is,%f \n",eff1)
//wen load doesn't trotate
R=(R1+R2)/2//mm
T2={(P*d/2)+(u1*W*R)}/1000//N-m
Wd2=T2*2*%pi*N//N-m
printf("the work done wen scre dosnt rotate is,%f N-m\n",Wd2)
//To=W*tan(a)*d/2
To=W*b*d/2/1000//N-m
eff2=To/T2
printf("the effi in this cse is,%f ",eff2)