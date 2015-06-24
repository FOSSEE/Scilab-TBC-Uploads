//Example 6.3, page 129
clc
n1=1.50
r1=.5//in m
r2=-.5//in m
d=.1//in cm
r=-0.5//radius in cm
p1=(n1-1)*((1/r1)-(1/r2))
p2=-2*(1/r2)
c=d/1
p=(1-(c*2))*(8-.8)
f=1/p
H1H=(c)/(1-(c*2))
printf("The power is %f D", p)
printf("\nThe focal length f is %f m",f)
printf("\nThe principal point is %f m",H1H)