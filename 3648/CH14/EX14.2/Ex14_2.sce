//Example 14_2
clc();
clear;
//To find the sound level of a sound wave
i1=10^-5    //Units in W/meter^2
i2=10^-12     //Units in W/meter^2
level=10*log10(i1/i2)    //units in dB
printf("The sound level of the sound wave is=%d dB",level)
