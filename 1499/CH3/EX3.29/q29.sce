s=%s;
syms k;

num=1;
den=s*(s+2)*(s^2+2*s+10);
t=syslin('c',num,den);
clf;
evans(t)
xgrid;
