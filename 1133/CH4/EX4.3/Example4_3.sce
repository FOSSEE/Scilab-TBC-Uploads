//Example 4.3
clc
disp("f = 1 kHz")
disp("Now  f = 1 / 2*pi*sqrt(6)*R*C")
disp("Choose  C = 0.1 uF")
r=1/(sqrt(6)*2*%pi*0.1*1*10^-3)  // in ohm
format(8)
disp(r,"Therefore,  R(in ohm) = ")
disp("Choose  R = 680 ohm    standard value")
