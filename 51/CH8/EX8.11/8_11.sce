clc;
clear;
Pa=50;//hp
D=1;//ft
l=300;//ft
f=0.02;
z1=90;//ft
//energy equation between the surface of the lake and the outlet of the pipe
//p1=V1=p2=z2=0; V2=V
//hL=f*l*(V^2)/(D *2*g)
//hT=Pa/(sw*%pi*(D^2)*V/4)
c1=(Pa*550)/(62.4*%pi*(D^2)/4)//561
c2=f*l/(D*2*32.2)//0.0932
fn=poly([c1 (-z1) 0 ((1/(2*32.2))+(c2))],"V","c");
r=roots(fn);
V1=r(1);//ft/sec
V2=r(2);//ft/sec
Q1=(%pi*(D^2)/4)*V1;//(ft^3)/sec
Q2=(%pi*(D^2)/4)*V2;//(ft^3)/sec
disp("(ft^3)/sec",Q2,"and","(ft^3)/sec",Q1,"The possible flowrates are=")