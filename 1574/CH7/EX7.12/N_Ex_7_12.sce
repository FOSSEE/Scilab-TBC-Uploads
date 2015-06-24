clc
//Chapter7
//Example7.12
//Given
fmax=5e3//max s/g freq
S_fmin=2*fmax// Min sampling freq
B_S=6//Binary bits sent per sample
BTR=B_S*S_fmin//Bit Transmission rate
Q=2^B_S//No of Quantizable levels
MQN=0.5/Q//Max Quantization noise
S_QNR=MQN^-1// Signal to Quantization noise ratio
//b
S_QNRreq=0.5*S_QNR// Signal to Quantization noise ratio
Qreq=0.5*S_QNRreq//No of Quantizable levels
B_Sreq=log2(Qreq)//Binary bits sent per sample
mprintf('a)  Bit Transmission rate: %d kbits/s\n    Signal to Quantization noise ratio %d \nb)\n  Bit Transmission rate: %d kbits/sample\n    Signal to Quantization noise ratio: %d',BTR/1000,S_QNR,B_Sreq,S_QNRreq)
