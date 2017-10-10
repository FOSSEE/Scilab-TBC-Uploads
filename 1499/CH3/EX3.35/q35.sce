s=%s;
syms k;

num=1;
den=s*(s+4)*(s^2+8*s+32);
t=syslin('c',num,den);
clf;
evans(t)
xgrid;
