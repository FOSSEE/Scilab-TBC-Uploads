s = %s;
A = [-5 1 0;0 -2 1;20 -10 1];
B = [0;0;1];
C = [-1 1 0];
[S1]=syslin('c',A,B,C,0);
ssprint(S1);
syms t s;
tf = ss2tf(S1);
disp(tf);

R = laplace(1,t,s);
E = R*(1- tf);
sse = limit(s*E,s,0);
disp(sse,"steady state error for step input:");

R = laplace(t,t,s);
E = R*(1- tf);
sse = limit(s*E,s,0);
disp(sse,"steady state error for ramp input:");
printf("G(s)is type-0 system");
