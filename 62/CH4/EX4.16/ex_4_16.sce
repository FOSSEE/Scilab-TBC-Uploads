clear;
clc;
z = %z;
a=5;
syms n z1;
X  =1/(1-a*z^-1);
X1 = denom(X);
zp = roots(X1);
X1 = 1/(1-a*z1^-1);
F = X1*(z1^(n-1))*(z1-zp(1));
ha = limit(F,z1,zp(1));
disp(ha*'u(n)','han]=')
a=.5
X  =1/(1-a*z^-1);
X1 = denom(X);
zp = roots(X1);
X1 = 1/(1-a*z1^-1);
F = X1*(z1^(n-1))*(z1-zp(1));
hb = limit(F,z1,zp(1));
disp(hb*'-u(-n-1)','hb[n]=')