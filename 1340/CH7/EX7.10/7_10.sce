clc;
syms s a K;
G = K/(s^2+a*s+K);
disp(G,"Closed loop transfer function:");

DG = diff(G,K);
sta = (a/G)*diff(G,a);
sta = simple(sta);
disp(sta,"Sensitivity wrt parameter a = ")
