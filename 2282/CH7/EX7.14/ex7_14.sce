//Example 7.14, Page no.282
clear 
clc

Ga=60     //Amplifier Gain in dB
Ta= 60    //Noise teperature of Antenna
L1=1.12   //Feeder Loss equivalent to dB
T1=290    //Noise teperature of stage 1
G2=10^6     //Gain of stage 2 in dB
T2=140    //Noise teperature of stage 2
T3=10000  //Noise teperature of stage 3
G=Ga-0.5  // input of low noise amplifier

T=Ta+T1*(L1-1)+L1*(T2+(T3/G2))
x=G-10*log10(T)
printf("T = %.1fK\n\n G/T = %.0f dB/k",T,ceil(x))
printf("\n\n It is evident from the solutions of the problems 13 and 14\n that G/T ratio is invarient regardless of the reference point in agreement \n with a statement made earlier in the text.")
