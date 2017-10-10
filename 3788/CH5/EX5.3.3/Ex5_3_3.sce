//example 5.3.3
//calculate bit rate for BPSK and QPSK
//variables
clc
clear
BW = 36
alpha = 0.4

//result
RsBPSK = BW/(1 + alpha)
RsQPSK = 2*RsBPSK
printf("The maximum symbol rate for BPSK RF link is %f Msps \n",RsBPSK)
printf("The maximum symbol rate for QPSK RF link is %f Msps ",RsQPSK)
