clc;
clear;
format('v',6);
m1=10/2.2;       //conversion from lbs to kg
m2=9.221;
M=m1+m2;
v1=1.233;
v2=2.555;
V=v1+v2;
c=0.12*V;        //contraction
Vf=V-c;          //final volume
D=M/Vf;
//format('e',9);
disp(abs(D),"at,the end,density(in kg/l)=");
