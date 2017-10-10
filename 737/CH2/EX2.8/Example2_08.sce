//Example 2.8 page 33
//Determine the cutoff frequency and the order for the anti-image filter
//given a DSP system with a sampling rate of 16,000 Hz and specifications
//for the anti-image filter as shown in Figure 2.24.
//
//Design requirements:
//& Maximum allowable gain variation from 0 to 3,000 Hz ¼ 2dB
//& 33 dB rejection at the frequency of 13,000 Hz
//& Butterworth filter assumed for the anti-image filter
clc,clear,close;

fs = 16000;
T = 1/fs;
f1 = 3000,f2 = 13000;//Hz
x1 = f1*T;
gain1 = sin(x1*%pi)/(x1*%pi);
gaindb1 = 10*log(gain1);
disp("For f = 3000Hz, gain = "+string(gain1)+" = "+string(gaindb1));

x2 = f2*T;
gain2 = sin(x2*%pi)/(x2*%pi);
gaindb2 = 10*log(gain2);
disp("For f = 13000Hz, gain = "+string(gain2)+" = "+string(gaindb2));

n = .5*log((10^2-1)/(10^0.154 - 1))/log(f2/f1)
disp("n = "+string(n));
n = round(n);

fc2 = f2/(10^2-1)^(1/(2*n));
fc1 = f1/(10^0.154-1)^(1/2/n);

disp("fc1 = "+string(fc1)+" fc2 = "+string(fc2));
disp("we choose the smaller one, that is " + string(min(fc1,fc2)));