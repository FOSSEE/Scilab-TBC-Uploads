//find..
clc
//solution
//given
d=600//mm
r=0.300//mm
q=4.2//rad
t=5//mm
w=100//mm
u=0.3
ft=50//N/mm^2
//let P be least force req
//log(T1/T2)=u*q
//T1/T2=3.53  ...eq1
T1=ft*t*w
T2=T1/3.53
P=(T2*150-T1*75)/(600)//N
printf("force req is ,%f N\n ",P)
Tb=(T1-T2)*r//N-m
printf("torque applied is,%f N-m\n",Tb)