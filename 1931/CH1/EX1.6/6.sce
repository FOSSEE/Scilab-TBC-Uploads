clc
clear
//INPUT DATA
Il1=70//sound in dB
Il2=80//sound in dB

//CALCULATION
I1=10^(Il1/10)//ratio of intensity
I2=10^(Il2/10)//ratio of intensity
I=I1+I2//intensity of sound in dB
Il=10*log10(I)//resultant intensity in dB

//OUTPUT
printf('The resultant sound level is %3.2f dB',Il)
