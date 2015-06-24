// calculate the sensitivity
clc;
Ps=200*10^3;
r=0.6;
d2=0.5;
d1=0.5;
a=(d2/d1^2);
x1=(1.1-r)/(2*a);
disp(x1,'x1=')
r=0.8;
d2=0.5;
d1=0.5;
a=(d2/d1^2);
x2=(1.1-r)/(2*a);
disp(x2,'x2=')
x=x1-x2;
disp(x,'so the range is x (mm)')
hS=%pi*d2*10^-3;
A2=%pi*d2*10^-6*(x1+x2)/2;
pS=-0.4*Ps/A2;
pgS=25*10^-3/1000;
S=hS*pS*pgS;
disp(S,'sensitivity=')