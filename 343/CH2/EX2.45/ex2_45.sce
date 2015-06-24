clc
f=50;
I=5;
V=250;
I1=5.8
Z=V/I;
A=[1 (1/(2*%pi*50))^2; 1 (1/(2*%pi*60))^2]
B=[50^2; 43.1^2];
res=inv(A)*B;
r=res(1,1);
P=I1^2*sqrt(r);
disp("Watts",P,"Power absorbed");