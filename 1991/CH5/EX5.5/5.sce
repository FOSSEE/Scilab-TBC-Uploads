clc
clear
//input
f=0.5 //focal length 
u=0.8 //distance of object 
f1=0.2 //focal length of converging lens
d=1 //distance behind the first lens
//calculation
x=(1/f)-(1/u)//lens formula
y=1/x
u1=-(y-d)//second lens 
a=1/f1 +(1/-u1)//lens formula
b=1/a
//output
printf("the image lies %3.3f m behind second lens",b)
printf("\n the image is %3.3f  m behind first lens",b+d)
