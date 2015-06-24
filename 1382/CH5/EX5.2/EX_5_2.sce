// Example 5.2:amplifier gain
clc;
clear;
close;
f=20;//frequency in hertz
Avm=100;//mid voltage gain
fl=40;//lower cut off  frequency in hertz
fh=16;//lower cut off  frequency in hertz
Avl= (Avm/(sqrt(1+(fl/f)^2)));//gain at lower cut off frequency
Avh= (Avm/(sqrt(1+(f/fh)^2)));//gain at upper cut off frequency
disp(Avl,"gain at lower cut off frequency")
disp(Avh,"gain at upper cut off frequency")
