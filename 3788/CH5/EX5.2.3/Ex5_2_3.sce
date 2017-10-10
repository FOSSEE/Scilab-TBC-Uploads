//Example 5.2.3
//Calculate the SN ratio if CN = 10dB

//Variables
clc
clear
delFpk = 3.6
Fmax = 4.8
CN = 10
delFpeak = 3.6

//result
Brf = 2*(delFpk + Fmax)
SNout = CN +10*log10(Brf/Fmax) + 20*log10(delFpeak/Fmax) + 1.8
printf("The SN ratio is %f dB,if the CN ratio for  \n the signal from the satellite is 10dB",SNout)

