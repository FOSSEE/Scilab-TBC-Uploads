
clc; funcprot(0);
// Initialization of Variable
S=1.0/10000;//scale
A=500.0;//area in sq. km
pw=0.3;//side overlap
l=0.23;//length
w=0.23;//width
//calculation
a=(1-0.6)*(1-pw)*l*w/S**2/1000/1000;
N=A/a;
disp(round(N),"no. of photographs taken")
clear()
