clc
//Chapter 3:Network noise and intermodulation distortion
//example 3.3 page no 80
//given
NF1=2//first stage noise figure
NF2=6//second stage noise figure
F1=10^(NF1/10)//first stage noise factor
F2=10^(NF2/10)//second stage noise factor
G1=15.9//gain of first stage equivalent to 12dB
G2=10//gain of second stage equivalent to 10dB
F=F1+(F2-1)/G1//overall noise factor
NF=10*log10(F)//noise figure of the two-stage systemm
printf('the noise figure of the two-stage system is %f dB',round(NF*10)/10)
