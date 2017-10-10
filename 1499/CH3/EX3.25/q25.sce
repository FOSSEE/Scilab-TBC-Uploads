s=%s;
syms k;

num=k;
den=s*(s+2)*(s^2+2*s+2);
t=syslin('c',num/den);
clf;
evans(t)
