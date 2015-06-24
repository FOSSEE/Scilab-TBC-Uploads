clc;
//page no 285
//prob no 7.1
// In the given problem a signal is transmitted using a four level code
M=4;
B=3.2;// in KKz
SNR=35;//in dB
//By using Shannon-Hartley theorem, ignoring noise we have
c=2*B*log2 (M);
disp('kb/s',c,'maximum data rate for four-level code in the available bandwidth');
//Now we have to use Shannon limit to find the maximum data rate for any code
//SNR in power ratio is 
SNR1=10^(35/10);
C=B*log2(1+SNR1);
disp('kb/s',C,'maximum data rate for four-level code in the available bandwidth');
// Both results are maxima, we have to choose lesser of the two.
// Therefore we choose c=12.8kp/s