//caption:root_locus
//example 7.24.9
//page 308
clc;
s=%s;
syms K
clf();
g=(K*(s^2+4)/(s*(s+1)));
Z=2
P=2
disp("the characterstics eq. is determined as:")
CH=(s*(s+1))+K*(s^2+4)
CH=sym('(s*(s+1))+K*(s^2+4)');
disp('=0',CH,"characterstics_eq,CH=")
eq=(s*(s+1))
p=roots(eq)
disp(p,"open loop poles are:")
K=sym('-(s*(s+1))/(s^2+4)')
d=diff(K,s)
e=2*s^2-8*s-8
r=roots(e);
disp(r,"r=")
disp("since -0.82 lies on root locus, so the breakaway point is -0.82 ")
disp("by putting s=-0.82 in  |G(s)*H(s)|=1, the value of K at s=-0.82 is K=0.2")
k=0.2
g=(k*(s^2+4)/(s*(s+1)));
G=syslin('c',g)
evans(g,200)
xgrid(2)

disp("part (b)")
disp("by putting s=-0.69+i0.9 in  |G(s)*H(s)|=1, K=0.464")
