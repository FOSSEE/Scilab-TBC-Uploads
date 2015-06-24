clc
t1=60; //0C
t2=35; //0C
L=0.22; //m
k=0.51; //W/m 0C

q=k*(t1-t2)/L;
disp("Rate of heat transfer per m^2 =")
disp(q)
disp("W/m^2")