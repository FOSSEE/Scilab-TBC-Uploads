s=%s;
syms k;

num=k*(s+1);
den=(s^2+4*s+13);
t=syslin('c',num,den);
clf;
evans(t)
