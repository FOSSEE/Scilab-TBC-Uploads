clear;
clc;
f=10*10^9,a=4*10^-2,b=2*10^-2,u=3*10^8,Pavg=2*10^-3;
fc=u/(2*a);
n=377/sqrt(1-(fc/f)^2);
E=sqrt(4*n*Pavg/(a*b));
disp(E,'Peak value of Electric field = ');