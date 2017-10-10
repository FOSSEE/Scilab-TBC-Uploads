//example 8.4(a)//
clc
//clears the screen//
clear
//clears the variables//
disp('In this case of flip flop, J and K are initially 0 & 1 respectively. Thus J is active. With the first leading edge of clock input, Q and therefore J goes to logic 1 state. The second leading edge edge forces Q to go to logic 0 state as now it is K input that is in logic 0 state and active. This circuit also behaves in the same way as the earlier one. The output goes alternatively to logic 0 and 1 state. However the transitions occur on the leading edge of clock input.')
disp('The frequency of the Q output waveform in the two cases is equal to half the frequency of the clock input for obvious reasons and is therefore 50kHz')