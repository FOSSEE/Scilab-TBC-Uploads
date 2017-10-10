s=%s;
syms k;

num=k*(s+1)*(s+3);
den=s*(s+2)*(s+4);
t=syslin('c',num/den);
clf;
evans(t)
