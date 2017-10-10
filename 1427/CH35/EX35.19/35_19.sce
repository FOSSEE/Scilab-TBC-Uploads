//ques-35.19
//Calculating frequency shift from TMS required
clc
R=1;//resonance order
f=500;//frequency (in MHz)
shift=R*(f*10^6)*10^-6;
printf("The frequency shift required is %d Hz.",shift);
