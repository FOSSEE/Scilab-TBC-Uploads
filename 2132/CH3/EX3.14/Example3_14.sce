//Example 3.14
clc;
clear;
close;
format('v',7);
//Given data :
l=2;//meter
b=2;//meter
p_i=98.1;//kN/m^3(Pressure intensity)
w=9.81;//kN/m^2
BC=1;//meter
AB=2;//meter
theta=30;//degree
B=p_i/w;//m
BD=BC*sind(theta);//m
xbar=10+0.5;//meter
A=l*b;//m^2
p=w*A*xbar;//kN
IG=(2*l^3)/12;//in m^4
h_bar=IG/A/xbar*(sind(theta))^2+xbar;//in meter
DI=h_bar-xbar;//m
FC=DI/sind(theta);//m
FB=FC+BC;//meter
P=p*FB/AB;//kN
disp(P,"Force in kN : ");
RB=p-P;//kN
disp(RB,"Reaction at hinge B in kN : ");
//Answer in the book is slightly differ due to limited accuracy used in the book as compared to SCILAB.
