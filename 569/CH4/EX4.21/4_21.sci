// determine damping ratio
clc;
w=2;
K=1.5;
J=200*10^-3;
wn=(K/J)^0.5;
u=w/wn;
M=1.1;
eta=[{[1/(M^2)]-[(1-u^2)^2]}/(2*u)^2]^0.5;
disp(eta,'damping ratio=')