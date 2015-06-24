//Determine the smallest value of duty cycle possible
//Example 10.2 page no 296
clear
clc
fs=30*10^3           //kHz.
Lc=50*10^-6          // Inductor H
Rl=7                 //Load Ω
D=1-((2*fs*Lc)/Rl)
printf("\n The value of D=%0.3f  ",D)
