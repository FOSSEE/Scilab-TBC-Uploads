// Example 6.15;//power coupled
clc;
clear;
close;
n1=1.48;//
n2=1.46;//
po=100;//in micro watts
pin=((po*((n1^2-n2^2))));//in micro watts
disp(pin,"power coupled in micro watts is")
