clc;
//page no 393
//prob no. 11.3.2
//A telephone signal wih cut off freq=4kHz digitzed into 8-bit at nyquist sampling rate fs=2W
q=1;W=4*10^3;n=8;
//a)Determination of Tx Bandwidth
B=(1+q)*W*n;
disp('Hz',B,'a)The transmission BW is');
//b)Determination of quantization S/N ratio
SN_dB=6*n;
disp('dB',SN_dB,'b)The quantization S/N ration is'); 