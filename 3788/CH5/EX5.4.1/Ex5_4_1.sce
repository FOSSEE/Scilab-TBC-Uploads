//example 5.4.1
//Calculate the bitrate ,Symbol rate BW and BER values

//Variables
clc
clear
CN = 25
NoiseBw = 1.0
r=0.3
Rs = 1
Bocc = Rs*(1+r)
rainattenuation = 3
printf("The occupied bandwidth of the RF signal is %f Mhz \n",Bocc)
//BPSK
Rb = 1
printf("The bit rate is %f Mbps \n",Rb)
BERclearair = erfc((2*CN)^(1/2))
printf("BER in clear air for BPSK is %f \n Since the all BER values are -ve high orders \n the BER values are shown zero\n",BERclearair)

//QPSK
Rb1 = 2*Rs
printf("The bit rate for QPSK is %f Mbps \n",Rb1)
BERclearair1 = erfc((CN)^(1/2))
printf("BER in clear air for QPSK is %f \n",BERclearair1)

CN1 = CN - rainattenuation

//BPSK
BERrain = erfc((2*CN1)^(1/2))
printf("BER in rain for BPSK is %f \n",BERrain)

//QPSK
BERrain1 = erfc((CN1)^(1/2))
printf("BER in rain for BPSK is %f \n",BERrain1)
