//Page Number: 5.38
//Example 5.27
clc;
//Given,
bw=3D+3; //Hz
n=3;
fs=(n*2*bw);
del=250D-3; //mV
fm=1000; //Hz
//(a) Maximum amplitude
Amax=(del*fs)/(2*%pi*fm);
disp('V',Amax,'Maximum Amplitude');

//(b) Output signal to quantizing ratio
SNRO=(3*(fs^3))/(8*%pi*%pi*(fm^3));
SNRdb=10*(log10(SNRO));
disp('dB',SNRdb,'Output SNR');
