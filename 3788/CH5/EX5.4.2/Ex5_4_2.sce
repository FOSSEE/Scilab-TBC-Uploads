//Example 5.4.2
//Calculate Bit rate,symbol rate ,BER values for BPSK and QPSK

//Variables
clc
clear
BW = 10
alpha = 0.25
CN = 16
marginbpsk = 0.8
marginqpsk = 1.2
Rs = BW/(1+alpha)
RsQPSk = 2*Rs

printf("The Symbol rate for satelite link is %f Msps \n",Rs)
printf("The bit rate for BPSK is %f MBps \n",Rs)
printf("The bit rate for QPSK is %f MBps \n",RsQPSk)

CNeff = 10^((CN - marginbpsk)/10)
BERBPSk = erfc((2*CNeff)^(1/2))
printf("C/N effective for BPSk is %f \n ",CNeff)
printf("The BER value for BPSK is %f  \n",BERBPSk)


CNeff1 = 10^((CN - marginqpsk)/10)
BERQPSk = erfc((CNeff)^(1/2))
printf("C/N effective for QPSk is %f \n ",CNeff1)
printf("The BER value for QPSK is %f ",BERQPSk)
