//detremine the size of rivets to be used for joint
clc
//refer fig 9.24,9.25
//solution
//given
t=25//mm
P=50000//N
e=400//mm
n=7
T=65//N/mm^2
fc=120//N/mm^2
//let xb and yb be center of gravity
//xb=(x1+x2+x3+x4+x5+x6+x7)/7
xb=(100+200+200+200)/7//mm
//yb=(y1+y2+y3+y4+y5+y6+y7)/7
yb=(200+200+200+100+100)/7//mm
Ps=P/n
T1=P*e//turning moment due to P//N-mm
//l1=l3
l1=sqrt(100^2+(200-yb)^2)//mm
l3=sqrt(100^2+(200-yb)^2)//mm
l2=200-yb//mm
//l4=l7
l4=sqrt(100^2+(yb-100)^2)//mm
l7=sqrt(100^2+(yb-100)^2)//mm
//l5=l6
l5=sqrt(100^2+yb^2)//mm
l6=sqrt(100^2+yb^2)//mm
//eqauting the moments equal to each other 
//P*e=(F1/l1)*[l1^2+l2^2+l3^2+l4^2+l5^2+l6^2+l7^2]
F1=(P*e*l1)/(l1^2+l2^2+l3^2+l4^2+l5^2+l6^2+l7^2)//N
F2=F1*l2/l1//N
F3=F1*l3/l1//N
F4=F1*l4/l1//N
F5=F1*l5/l1//N
F6=F1*l6/l1//N
F7=F1*l7/l1//N
//cos(q1)=100/l3=0.76=a
//cos(q4)=100/l4=0.99=b
//cos(q5)=100/l5=0.658=c
a=0.76
b=0.99
c=0.658
R3=sqrt(Ps^2+F3^2+2*F3*Ps*a)
R4=sqrt(Ps^2+F4^2+2*F4*Ps*b)
R5=sqrt(Ps^2+F5^2+2*F5*Ps*c)
printf("the value R3,R4,R5 are respctively,%f N\n,%f N\n,%f N\n",R3,R4,R5)
//let d be diameter 
pi=3.14
//from above we see that max lod is R5,therefore R5=P
//R5=(pi/4)*d^2*T
d=sqrt(R5*4/(pi*T))//mm
Lc=R5/(d*t)//max crushing load
printf("the  cordinates of centre of gravity are,%f mm\n,%f mm \n",xb,yb)
printf("the direct load is,%f N\n",Ps)
printf("the turning moment is,%f N-mm\n",T1)
printf("the values of Li respectively is,%f mm\n,%f mm\n,%f mm\n,%f mm\n,%f mm\n,%f mm\n,%f mm\n",l1,l2,l3,l4,l5,l6,l7)
printf("the shear loads(Forces F) acting are,%f mm\n,%f mm\n,%f mm\n,%f mm\n,%f mm\n,%f mm\n,%f mm\n",F1,F2,F3,F4,F5,F6,F7)
printf("the crushing stress is,%f N/mm^2\n ",Lc)
printf("the diameter is ,%f mm\n",d)
printf("since crushing load calculted is less then 120 N/mm^2,therefore desing is safe ")
