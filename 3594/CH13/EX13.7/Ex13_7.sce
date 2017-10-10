
clc
//given
r=6//in
a=6//in
b=4//in
//from example 4(using conditions and calculating constants A and B) we get F=11.1r-14.6
//when r=6 , F= 52
F=52//lb
inc=2*.01*52//increase neglecting very small values
F1=F+inc
F2=2*a*inc/b//Force required to prevent the sleeve from rising 
F3=F2/2//Force is uniformly distributed
r2=-14.6/(F1/r-11.1)//from equation 1
x=r2-r//increase in radius of rotation
lift=b*x/a//sleeve lift
P=F3*lift//governor power
printf("Governor power = %.3f in lb",P)
