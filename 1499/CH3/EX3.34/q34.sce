s=%s;
syms k;

num=1;
den=s*(s+4)*(s^2+2*s+2);
t=syslin('c',num,den);
clf;
evans(t)
xgrid;
