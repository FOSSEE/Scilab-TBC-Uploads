//To find governor effort and power
clc
//given
c=0.01
W=120//lb
w=15//lb
k=.720
h=8.944//in
Q=c*(W+2*w/(1+k))
x=(2*c/(1+2*c))*(1+k)*h
P=Q*x
printf("Governor power = Q*x = %.3f in lb",P)

