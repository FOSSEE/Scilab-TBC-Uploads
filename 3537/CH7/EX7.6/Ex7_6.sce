//Example 7_6
clc();
clear;
//To calculate the signal attenuation and overall signal attenuation
l=10
pi=100
p0=2
signalatten=(10/l)*log10(pi/p0)     // units in dB Km^-1
printf("Signal attenuation per unit length=%.1f dB Km^-1",signalatten)
overall=signalatten*10    //units in dB 
printf("\nover all Signal attenuation=%d dB",round(overall))
