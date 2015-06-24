// Calculate natural frequency and setteling time
clc;
K=60*10^3;
M=30;
wn=(K/M)^0.5;
disp(wn,'natural frequency (rad/sec)')
eta=0.7;
ts=4/(eta*wn);
disp(ts,'setteling time (s)')