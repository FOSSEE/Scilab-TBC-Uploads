//example 8.4(a)//
clc
//clears the screen//
clear
//clears the variables//
disp('Refer to figure. Q is initially 0, this makes J and K inputs to be initially 1 and 0 respectively. With the first trailing edge of clock input, Q goes 1 state. Thus J and K acquire logic status of 0 and 1 respectively. With the next trailing edge of clock input, Q goes to logic 0. This process continues and Q alternatively becmos 1 and 0.')
disp('The frequency of the Q output waveform in the two cases is equal to half the frequency of the clock input for obvious reasons and is therefore 50kHz')