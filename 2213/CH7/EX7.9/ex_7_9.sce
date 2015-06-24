//Example 7.9: Time taken and current
clc;
clear;
close;
//given data :
V=3000;// line voltage in volts
W=200;// weight of train in tonnes
D=0.9;// diameter in m
G=(30/1000)*100;//percentage gradient
r=50;// in N/tonne
gama=4;// gear ratio
Vm=50;//in km/h
eta=0.9;// gearing efficiency
We=1.10*W;// in tonne
T=4*6000;// in N-m
eta_m=85/100;// efficiency of motor
Ft=(eta*T*2*gama)/D;
A=(98.1*W*G)+(W*r);
B=Ft-A;
alfa=B/(277.8*We);// tractive effect required in N
t=Vm/alfa;
disp(t,"Time taken ,t(sec) = ")
Po=(Ft*Vm)/3600;// in kw
Pi=Po/eta_m;
It=(Pi*1000)/V;// in A
I=It/4
disp(I,"Current drawn per motor,I(A) = ")
