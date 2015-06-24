clc;
s=%s;
G = syslin('c',1/(s+2));
disp(G,"G(s)=");
disp("input is a step function:");
R = laplace(1,t,s);// for unit step function
C = G*R;
syms t s;
c = ilaplace(C,s,t);
disp(c,"c(t)=");