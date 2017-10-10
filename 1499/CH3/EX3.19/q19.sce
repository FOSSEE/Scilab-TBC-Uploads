s=%s;
syms k;

num=k*(s+1);
den=(s+2)*(s+3)*(s+4);
t=syslin('c',num,den);
clf;
evans(t)
