clc;
clear all;
disp("Heat transfer rate")
disp("k=k1+(k2-k1)*(t-t1)/(t2-t1)")
disp("A=4*%pi*r^2")
disp("Q=-k*4*%pi*r^2*dt/dr")
disp("Q=-(k1+(k2-k1)*(t-t1)/(t2-t1))*4*%pi*r^2*dt/dr")
disp("Q*dr/r^2 =-(k1+(k2-k1)*(t-t1)/(t2-t1))*4*%pi*dt ")
disp("By integrating both sides in the limits r1 to r2 and t1 to t2, we get,")
disp("Q = 4*%pi*r1*r2*(k1+k2)*(t1-t2)/(2*(r2-r1))")

