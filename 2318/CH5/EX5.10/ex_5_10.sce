//Example 5.10 //relative permeability
clc;
clear;
close;
n1=600;//turns
i=3;//A
d=30;//cm
H=(n1*i)/(%pi*d*10^-2);//
mo=4*%pi*10^-7;//
x=mo*H;//
as=6;//cm^2;//
y=as*10^-4*x;//
t1=500;//turns
z=t1*y;//
z1=2*z;//
r=250;//ohms
it=z1/r;//
k=3000;//micro-C
ur=(k*10^-6)/it;//
disp(round(ur),"relative permeability is,=")
