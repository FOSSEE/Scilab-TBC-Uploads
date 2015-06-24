clc;
clear;
T0=288;//K
p0=101;//kPa(abs)
l=2;//m
D=0.1;//m
f=0.02;
pd=45;//kPa(abs)
f=0.02;
m=1.65;//kg/sec
lnew=l/2;//m

x=f*l/D;
//from this value of x, Ma at exit is found as
Ma=0.7;
//and p2/pcritical is found as
pratio=1.5;
//and, from example 11.12,
prat=1.7;//where prat=p1/pcritical
pfraction=0.76;//where pfraction=p1/p0,1
//Hence,
p2=pratio*(1/prat)*pfraction*p0;//kPa(abs)
disp(Ma,"The Mach number at the exit=")
disp("kPa(abs)",p2,"The back pressure required=")