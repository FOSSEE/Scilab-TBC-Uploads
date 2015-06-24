//Example 12.4
clc;clear;close;
N=1000;
Q=10;
disp(N,'Length of sample sequence N=',Q,'Quality factor Q=');
f_bart=Q/(1.11*N);
f_w=Q/(1.39*N);
f_bt=Q/(2.34*N);
disp(f_bart,'Bartlett Frequency resolution =');
disp(f_w,'Welch Frequency resolution =');
disp(f_bt,'Blackman Turkey Frequency resolution =');