//Ex 6.3
clc;
syms s;
i=5;
R=2;
L=1;
C=1/2;
Z=((R+L*s)*(1/(C*s)))/((R+L*s)+(1/(C*s)));
V=Z*i;
v=ilaplace(V);
disp(v,'v(t)=');