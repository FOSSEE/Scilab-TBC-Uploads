clc
r1=0.01; //m
r2=0.02; //m
r3=0.05; //m
t1=600; //0C
t3=1000; //0C
k_B=0.2; //W/m 0C

q=2*%pi*(t1-t3)/(log(r3/r2)/k_B);
disp("Heat transfer per metre of length =")
disp(q)
disp("W/m")