clc
//Chapter 5:High Frequency Amplifiers and Automatic Gain Control
//example 5.12
//given
B=10^7//amplifier bandwidth
Bf=10*B//closed loop bandwidth
disp('The closed loop gain has been reduced by 20dB (a factor of 10) so the banwidth increased proportionally')
mprintf('the closed-loop bandwidth is %3.2e rad/s',B)
