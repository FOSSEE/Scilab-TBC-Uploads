//Find the maximum and minimum values of the inductor current
//Example 10.7 page no 297
clear
clc
D=0.6      //Duty cycle
V1=24      //V
Rl=7
fs=30*10^3
L=50*10^-6
V2=D*V1
Imax=V2/Rl+((V1-V2)*D)/(2*fs*L)         //maximum  values of the inductor current
Imin=V2/Rl-((V1-V2)*D)/(2*fs*L)        // minimum values of the inductor current
printf("\n The value of Imax=%0.3f A ",Imax)
printf("\n The value of Imin=%0.3f A",Imin)
