// the Answer in the book is wrong.It is printed as 90.4 for SNR3 but it should be 100.59
clc
//Chapter15
//Example15.3, page no 536
//Given
//a
B1=4e3//Channel Bandwidth
SNR1=31//Channel SNR
C1=B1*log2(1+SNR1)//Channel Capacity
SNR2=14//Reduced SNR
B2=round(C1/log2(1+SNR2))//Bandwidth for reduced SNR with same Channel capacity

//b
B3=3e3//Reduced Bandwidth
SNR3=(2^(C1/B3))-1//Signal Power for reduced bandwidth
mprintf('a)\n  Channel capacity is: %d Kbits/sec\n    Bandwidth: %d KHz\nb)\n  SNR for 3KHz bandwidth: %f',C1*1e-3,B2*1e-3,SNR3)

