s=%s;
syms k;

num=1;
den=s*(s+2)*(s^2+4*s+13);
t=syslin('c',num,den);
clf;
evans(t)
xgrid;
