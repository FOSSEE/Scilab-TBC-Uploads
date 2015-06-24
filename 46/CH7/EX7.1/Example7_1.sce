//Example 7.1
clc
s=%s;
tau1=0.5;
tau2=1;
R2=1;
//From Eq.(7.8)
g=R2/((tau1*s+1)*(tau2*s+1))
disp(g,'H2(s)/Q(s)=')
Qs=1/s;
H2s=g*Qs;
disp(H2s,'H2(s)=')
syms t;
H2t=ilaplace(H2s,s,t);
disp(H2t,'H2(t)=')