//clear//
//Caption:Signal-to-Quantization Noise Ratio of PCM
//Example5.3:Signal-to-Quantization noise ratio
//Channel Bandwidth B
clear;
clc;
n = input('Enter no. of bits used to encode:')
W = input('Enter the message signal banwidth in Hz:')
B = n*W;
disp(B,'Channel width in Hz:')
SNRo = 6*n - 7.2;
disp(SNRo,'Output Signal to noise ratio in dB:')
//Result 1 if  n = 8 bits
//Enter no. of bits used to encode: 8
//Enter the message signal banwidth in Hz: 4000
//Channel width in Hz:  32000.  
//Output Signal to noise ratio in dB: 40.8  
///////////////////////////////////////////////
//Result 2 if n = 9 bits
//Enter no. of bits used to encode:9
//Enter the message signal banwidth in Hz:4000
//Channel width in Hz: 36000.  
//Output Signal to noise ratio in dB: 46.8  
//////////////////////////////////////////////
//Conclusion: comparing result 1 with result 2 if number of bits increased by 1
//corresponding output signal to noise in PCM increased by 6 dB.
