clc
T1=55; //0C
T2=95; //0C
W=integrate('200', 'T', T1, T2);
Q=integrate('160', 'T', T1, T2);
dU=Q-W;
disp("change in internal energy=")
disp(dU/10^3)
disp("kJ")