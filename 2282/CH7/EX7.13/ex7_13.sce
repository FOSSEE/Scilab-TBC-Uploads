//Example 7.13, Page no.281
clear 
clc
Ga=60     //Antenna Gain in dB
Ta= 60    //Noise teperature of Antenna
L1=1.12   //Feeder Loss equivalent to dB
T1=290    //Noise teperature of stage 1
G2=10^6     //Gain of stage 2 in dB
T2=140    //Noise teperature of stage 2
T3=10000  //Noise teperature of stage 3
G=Ga-0.5  // input of low noise amplifier
Ts=(Ta/L1)+(T1*(L1-1)/L1)+T2+(T3/G2)
Ts=floor(Ts*100)/100
x=G-10*log10(Ts)
printf("Tsi = %.2fK\n\n G/T(in dB/K)= %.0f dB/K",Ts,x)
