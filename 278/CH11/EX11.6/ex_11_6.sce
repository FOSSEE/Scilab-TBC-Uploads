//caLCULATE the nmber ans size of studs
clc
//soltuion
//given
D=350//mm
p=1.25//N/mm^2
ft=33//N/mm^2
//let d be diameter of studs and dc be core daimeter of studs
pi=3.14
P=(pi/4)*D^2*p//N
//assuming nominal dia of studs =24, corrsponding dc=20.32//mm
d=24//mm
dc=20.32//mm
//P1=(pi/4)*dc^2*ft*n
n=P*4/(pi*dc^2*ft)
printf("the value of nukmber of studs is,%f \n",n)
printf("let us assume the value of nukmber of studs is 12\n" )
d1=25//mm//dia of stid hole
t=10//mm//assume
Dp=D+2*t+3*d1//mmm
printf("the value of pitch dia is,%f mm\n",Dp)
Pc=(pi*Dp)/(12)//n=12//mm//circumferential pitch
printf("the value of circumferential pitch is,%f mm\n",Pc)
x1=20*sqrt(d1)//mm
x2=30*sqrt(d1)//mm
printf("the lower and upper limet of circumferential pitch is,%f mm\n and ,%f mm",x1,x2)
printf("since Pc lies btw x1 and x2,hence design is safe")
printf("the size of stud is M24")