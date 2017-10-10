s=%s;
syms k;

num=k;
den=s*(s^2+4);
t=syslin('c',num,den);
clf;
evans(t)
