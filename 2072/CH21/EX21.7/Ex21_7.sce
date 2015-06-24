//example 21.7
clc
I1=100
v1=4*10^3
v2=2.40*10^5
I2=(I1*v1)/v2
R=30//in ohm
p_lost=I2*I2*R
P_output=I1*v1
p_per=(p_lost*100/P_output)
disp("Solution a")
disp(p_per,"Percentage of power lost=")
P_lost=I1*I1*R
per=(P_lost*100)/(4*10^5)
disp("Solution B")
disp(per,"Percentage of power lost=")