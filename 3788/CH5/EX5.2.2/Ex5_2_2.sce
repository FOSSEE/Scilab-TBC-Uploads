//Example 5.2.2
//Calculate the baseband SN ratio for the Voice channel

//Variables
clc
clear
Fmax = 3.4
Brf = 45
Rs = 9.6
P = 8.8
SNratio = 7
CNratio = 13

//result
delFpk = Brf/2 - Fmax
SNfm = CNratio + 10*log10(Brf/Fmax) + 20*log10(delFpk/Fmax) + 1.8 + P
printf("The baseband SN ratio for the voice channel is %f dB ",SNfm)
