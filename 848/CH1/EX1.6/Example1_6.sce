//clear//
//Caption:Program to calculate attenuation (or) loss os power
//Example 1.6
//page 14
clear;
clc;
close;
P1 =1; //one watt
P2 = P1/2; //reduced by half value
Atten_dB = 10*log10(P2/P1);
disp(Atten_dB,'Attenuation in dB = ');
power_lost = 10^(Atten_dB/10)
disp(power_lost,'The amount of power lost = ');
//Result
//Attenuation in dB =     - 3.0103  
//The amount of power lost =      0.5 
