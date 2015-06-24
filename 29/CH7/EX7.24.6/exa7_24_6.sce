//caption:root_locus
//example 7.24.6
//page 304
clc;
s=%s;
syms K;
clf();
g=(K*(s+1)/(s^2+0.4*s+0.4));
eq=(s^2+0.4*s+0.4)
p=roots(eq)
disp(p,"open loop poles are:");
P=2;
Z=1;
k=0
  A=((2*k+1)*180)/(P-Z);
  disp(A,"asymptote are at angle:")
  CH=(s^2+0.4*s+0.4)+K*(s+1)
CH=sym('(s^2+0.4*s+0.4)+K*(s+1)');
disp('=0',CH,"characterstics_eq,CH=")
K=sym('-(s^2+0.4*s+0.4)/(s+1)')
d=diff(K,s)
e=s*(s+2)
disp("break away point s=-2 as it lies on root locus")
disp("since |G(s)*H(s)|=1")
disp("which gives K=3.6")
k=3.6
g=(k*(s+1))/(s^2+0.4*s+0.4);
G=syslin('c',g)
evans(g,200)
xgrid(1)
v=[-20 1 -2 2]
mtlb_axis(v);
disp(" poles s=(-0.2+j0.6 and -0.2-j0.6)are equidistant from the zero s=-1, hence rootlocus plot is arc of the circle with centre s=-1 and radius 1.")
