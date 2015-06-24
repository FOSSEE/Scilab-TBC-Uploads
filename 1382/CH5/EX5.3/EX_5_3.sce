// Example 5.3:amplifier gain
clc;
clear;
close;
f=40;//frequency in hertz
Avm=40;//mid voltage gain
fl=40;//lower cut off  frequency in hertz
Avl= (Avm/(sqrt(1+(fl/f)^2)));//gain at lower cut off frequency
disp(Avl,"gain at lower cut off frequency")

