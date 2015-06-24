clc
//Chapter 5:High Frequency Amplifiers and Automatic Gain Control
//example 5.11 page no 181
//given
rpi=237
CM=1166*10^-12//miller capacitance
Co=4*10^-12//equivalent miller capacitance reflected at output side
Rs=500//source resistance
RL=600//load resistance
Cs=rpi*CM/Rs//capacitance across source resistance
B=(RL*Co)^-1//total bandwidth
disp('the midfrequency voltage gain is -77.2')
mprintf('the total bandwidth is %3.2e rad/s \n the capacitance across source resistance is %3.2e F',B,Cs)
