//Example 8.5.4
//RAin attenuation at 11.4GHZ
clc
clear
carrierfreq=10.7
newcarrierfreq=11.4
A=6
Anew=((newcarrierfreq)^2/(carrierfreq)^2)*A
printf("Rain attenuation at Carrier frequency \n of 11.4 Ghz is %f dB \n",Anew)
