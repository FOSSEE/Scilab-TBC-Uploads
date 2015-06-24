//Example 5.7 //relative permeability
clc;
clear;
close;
n1=320;//turns
n2=250;//turns
i=10;//A
l=32;//cm
N=(n1*i)/(l*10^-2);//AT/m
fl=2.5*10^-4;//Wb
sd=100;//
k=(fl*i)/sd;//
sd1=270;///
mo=4*%pi*10^-7;//
A=0.35;//cm^2
ur=((k*sd1)/(2*mo*N*A*10^-4*n2));//
disp(ur,"relative permeability is,=")
