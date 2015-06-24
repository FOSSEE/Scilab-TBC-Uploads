clc;
//page no 206
//prob no. 5.10
//Refer fig.5.24
//Till the antenna there are 2 doubler and 4 tripler
f_mul=18*18;
dev_o=75*10^3;//o/p freq deviation is 75kHz
//Determiantion of reqd freq deviation of oscillator
dev_osc=dev_o/f_mul;
disp('Hz',dev_osc,'Freq deviation of oscillator is');