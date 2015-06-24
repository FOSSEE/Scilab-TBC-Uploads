clear;
clc;
syms n z1 a b;
h=a^n;
H=symsum(h*z1^-n,n,0,%inf)
disp(H,"H(z)");
disp("since |z|>|a| z=%inf is included hence the system is causal")
disp("if |a|<1 then the ROC of H(z) contains the unit circle and hence the      system will be stable")
