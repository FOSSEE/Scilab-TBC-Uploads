s=%s;
syms k;

num=s+1;
den=(s^2)*(s^2+5*s+6);
t=syslin('c',num,den);
clf;
evans(t)
