clc;
// page no 437
// prob no 13_1
freq_band=1*10^6;
// A)For SSBSC AM, the bandwidth is the same as the maximunm modulating freq.
fmax=4*10^3;
B=fmax;
no_of_signal=freq_band/B;
disp(no_of_signal,'a)The number of signals are');
// B)For DSB AM, the bandwidth is twice the maximunm modulating freq.
B=2*fmax;
no_of_signal=freq_band/B;
disp(no_of_signal,'b)The number of signals are');
// C)Using Carson's Rule to approximate the bandwidth
f_max=15*10^3; deviation=75*10^3;
B=2*(deviation + f_max);
no_of_signal=freq_band/B;
disp(no_of_signal,'c)The number of signals are');
// D)Use Shannon-Hartley theorem to find the bandwidth
C=56*10^3;M=4;//for QPSK
B=C/(2*log2(M));
no_of_signal=freq_band/B;
disp(no_of_signal,'d)The number of signals are');