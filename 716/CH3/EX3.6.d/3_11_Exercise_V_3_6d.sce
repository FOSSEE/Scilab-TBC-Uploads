//find final value x(0) using final value theorem such that X=L(x(t))
clc;
clear;
s=poly(0,"s");
X=s*(s+1)/(s.^2+2*s+1);
xinf=horner(s*X,0);
disp(xinf,'by final value theorem x(inf)=');