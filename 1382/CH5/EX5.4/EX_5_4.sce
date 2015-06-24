// Example 5.4:amplifier gain
clc;
clear;
close;
f=50;//frequency in hertz
Avm=150/0.707;//mid voltage gain
fh=20;//lower cut off  frequency in hertz
Avh= (Avm/(sqrt(1+(f/fh)^2)));//gain at upper cut off frequency
disp(Avh,"gain at upper cut off frequency")
