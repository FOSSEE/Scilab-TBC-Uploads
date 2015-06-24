clear;
clc;
a=0,b=.8,Eo=10^-9 /(36*%pi),Uo=4*%pi*10^-7,Ur=1,w=2*%pi*10^7;
Er=b^2/(Uo*Eo*w*w);
disp(Er);
n=sqrt(Uo/(Eo*Er));
disp(n);