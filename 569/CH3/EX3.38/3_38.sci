//calculate power disipated and uncertaainity in power

clc;
V=110.2;
I=5.3;
P=V*I;disp(P,'power(W) dissipated');
w_v=.2;
w_i=0.06;
dp=sqrt((w_v*I)^2+(w_i*V)^2);
disp(dp*100/P,'uncertainity in power(%)');