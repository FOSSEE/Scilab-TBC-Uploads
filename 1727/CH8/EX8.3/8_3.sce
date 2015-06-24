clc
//Initialization of variables
b=3 //m
y=1 //m
sf=0.005
n=0.028
gam=9.81*1000
Q=0.25 //m^3/s
slope=1.5
//calculations
A= 0.5 *b*y
P=2*sqrt(1 + (slope)^2)
R=A/P
yx= Q*n/(slope * R^(2/3) *sf^(1/2))
y= yx^(3/8)
//results
printf("depth = %.2f m",y)
