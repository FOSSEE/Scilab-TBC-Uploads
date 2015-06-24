//Example 6.9 // amplitude of oscillations & relative phase  
clc;
clear;
//given data :
m=.1;//suspended mass in kg
k=100;// force constant in N/m
Fo=2;// maximum driving force in N
p=1;// constant in Ns/m
Wo=sqrt(k/m);//angular frequency in rad/sec in steady state;
W=50;//angular frequency in rad/sec
f=Fo/m;
d=p/(2*m);//damping constant
B=f/sqrt(((Wo^2)-(W^2))^2+4*(d^2)*(W^2));//amplitude of Oscillation in m
delta=atan(2*d*W/(Wo^2-W^2));// relative phase in radian
disp(B,"amplitude of oscillations in m")
delta=delta*180/%pi +180;// to convert in 0 t0 180 in degree
disp(delta,"relative phase in degree")
