//find diameter  of rivet
clc
//solution
//given
n=6
P=60000//N
e=200//mm
T=150//N/mm^2
Ps=P/n
//l1=l3=l4=l6
l1=sqrt(75^2+50^2)//mm
l3=sqrt(75^2+50^2)//mm
l4=sqrt(75^2+50^2)//mm
l6=sqrt(75^2+50^2)//mm
l2=50//mm
l5=50//mm
//eqauting the moments equal to each other 
//P*e=(F1/l1)*[l1^2+l2^2+l3^2+l4^2+l5^2+l6^2]
//P*e=(F1/l1)*[4*l1^2+2*l2^2]
F1=(P*e*l1)/(4*l1^2+2*l2^2)//N
F2=F1*l2/l1//N
F3=F1*l3/l1//N
F4=F1*l4/l1//N
F5=F1*l5/l1//N
F6=F1*l6/l1//N
//cos(q1)=50/l1=0.555=a
a=0.555
R3=sqrt(Ps^2+F3^2+2*F3*Ps*a)
R2=Ps+F2//N
printf("the value of forces is,%f N\n,%f N\n",R2,R3)
//R3>R2
pi=3.14
P=(pi/4)*d^2*T
//R3=P
d=sqrt(R3/117.8)//mm
printf("the value of diameter is,%f mm\n",d)
printf("the standard diameter of is 19.5 mm ")
