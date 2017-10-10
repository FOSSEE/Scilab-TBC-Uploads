//Example 14_3
clc();
clear;
//To find the intensity of sound
level=3.5 //Units in dB
i2=10^-12  //Units in W/meter^2
i=10^(level+log10(i2))   //Units in W/meter^2
printf("The intensity of sound is I=")
disp(i)
printf("W/meter^2")
