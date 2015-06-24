// Example 5.16:fb
clc;
clear;
close;
rpi=2;//resistance in killo ohms
Cpi=1.8;//capacitance in pico farad
Cmu=0.12;//capacitance in pico farad
fb=(1/(2*%pi*rpi*10^3*(Cpi+Cmu)*10^-6));//frequency in mega hertz
disp(fb,"frequency in mega hertz")
