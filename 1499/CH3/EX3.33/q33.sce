s=%s;
syms k;

num=s;
den=((s+2)*(s^2+4));
t=syslin('c',num,den);
clf;
evans(t)
xgrid;
