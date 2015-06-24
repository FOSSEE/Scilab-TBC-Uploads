clc;
//page no 392
//prob no. 11.3.1
//PCM system with SNR=40dB & rms peak ratio=-10
SNR=40;
//a)Determination of no. of bits/code
n=(SNR-(10*log10(3))-(-10))/(20*log10(2));
disp(n,'The no. of bits per code word is');
disp('Rounded off ','=8');