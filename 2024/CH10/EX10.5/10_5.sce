clc
//Initialization of variables
n1=1
n2=2
c1=5.02
c2=4.97
t1=60 //F
t2=100 //F
R0=10.73
p1=30 //psia
p2=10 //psia
//calcualtions
t=(n1*c1*t1+n2*c2*t2)/(n1*c1+n2*c2)
V1= n1*R0*(t1+460)/p1
V2=n2*R0*(t2+460)/p2
V=V1+V2
pm=(n1+n2)*R0*(t+460)/V
//results
printf("Pressure of mixture = %.1f psia",pm)
