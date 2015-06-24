clc
//initialisation of variables
a=7//in
b=10//in
c=12//in
r=96//in
p1=15//lb/in^2
p2=100//lb/in^2
T=16//Degree C
gama=1.4//in
h=120//r.p.m
T1=T+273//C absolute
//CALCULATIONS
v1=(%pi/4)*(a/c)^2*(b/c)//ft^3
w=(p1*144*v1)/(r*T1)//lb
w1=h*w//lb
W=1680*[1.72-1]//ft lb
I=144*p1*v1*log(p2/p1)//ft lb
E=I/W*100//percent
//RESULTS
printf('The ideal efficiency is defined as the ratio of tthis work=% f percent',E)
