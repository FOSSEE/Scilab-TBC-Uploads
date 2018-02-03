// Exa 4.2

clc;
clear;

// Given

f = 83.3 ; // frequency of  sinusoidal voltage in KHz

// Solution
// part a

printf('Being sunchronised, the frequency of the saw-tooth wave will be a submultiple of the signal. \n');

printf(' Frequency of saw-tooth curve = %.2f kHz \n',f/10);
F = f/10;
printf(' Period of the saw-tooth curve = %.1f microsec \n',(1/F)*10^3);

// since, Sine wave y = A sin theta
// but y/A = 0.5(since, end of trace was at position half the amplitide away from x-axis)
theta = asind(1/2) ;
printf(' The 10th wave is in short of a complete since wave by %d degrees \n',theta);
printf(' Therefore, No of full waves of sine form seen on the screen are 9 11/12 waveforms \n');

// Rise time +decay time = period of wave = 120 microsec
T = 120 ; // period in microsec
 Rise_by_decay = (119/12) / (10- 119/12);
DecayTime = Rise_by_decay/T;
printf(' Decay time = %.1f microsec \n',round(DecayTime));
printf(' Rise time = %.1f microsec \n',T-DecayTime);

// part b

printf(' Since, increase time base frequency = 10/4 times the final value \n');

L = (10/4)* theta ;
printf(' Length of trace blanked in degrees due to flyback time = %d degrees \n ',L);
T_new = T*4/10;
printf('Period of new time base = %d microsec \n',T_new);
printf(' Rise time as per new time base = %d microsec \n',T_new-1);
