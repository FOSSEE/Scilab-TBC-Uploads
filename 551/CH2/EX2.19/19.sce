clc
p1=1.5; //bar
p2=7.5; //bar
V1=3/p1;
V2=3/p2;
W=integrate('3/V*10^2', 'V', V1, V2);
disp("Work done=")
disp(W)
disp("kJ")