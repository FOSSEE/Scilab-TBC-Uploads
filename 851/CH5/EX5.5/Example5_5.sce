//clear//
//Example 5:Delta Modulation - to avoid slope overload distortion
//maximum output signal-to-noise ratio for sinusoidal modulation
//page 207
clear;
clc;
a0 = input('Enter the amplitude of sinusoidal signal:');
f0 = input('Enter the frequency of sinusoidal signal in Hz:');
fs = input('Enter the sampling frequency in samples per seconds:');
Ts = 1/fs;//Sampling interval
delta = 2*%pi*f0*a0*Ts;//Step size to avoid slope overload
Pmax = (a0^2)/2;//maximum permissible output power
sigma_Q = (delta^2)/3;//Quantization error or noise variance
W = f0;//Maximum message bandwidth
N = W*Ts*sigma_Q; //Average output noise power
SNRo = Pmax/N; // Maximum output signal-to-noise ratio
SNRo_dB = 10*log10(SNRo);
disp(SNRo_dB,'Maximum output signal-to-nosie in dB for Delta Modualtion:')
//Result 1 for fs = 8000 Hertz
//Enter the amplitude of sinusoidal signal:1
//Enter the frequency of sinusoidal signal in Hz:4000
//Enter the sampling frequency in samples per seconds:8000
//Maximum output signal-to-nosie in dB for Delta Modualtion:-5.1717849 
//////////////////////////////////////////////////////////////////////
//Result 2 for fs = 16000 Hertz
//Enter the amplitude of sinusoidal signal:1
//Enter the frequency of sinusoidal signal in Hz:4000
//Enter the sampling frequency in samples per seconds:16000
//Maximum output signal-to-nosie in dB for Delta Modualtion:3.859115 
///////////////////////////////////////////////////////////////////////
//Conclusion: comparing result 1 with result 2, if the sampling frequency
//is doubled the signal to noise increased by 9 dB 
