clc;
clear;
A=0.1;//ft^2
v=50;//ft/s
p1=30;//psia
p2=24;//psia

d=1.94;//slugs/ft^3
//v1=v2=v and A1=A2=A
m=d*v*A;
Fay=-m*(v+v)-((p1-14.7)*A*144)-((p2-14.7)*A*144);
disp("lb",0," and the x component of anchoring force is","lb",Fay,"The y component of anchoring force is ")