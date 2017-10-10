s=%s;
syms k;

num=k;
den=s*(s^2+8*s+32);
t=syslin('c',num,den);
clf;
evans(t)
