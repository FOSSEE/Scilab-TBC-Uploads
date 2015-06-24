//Example 1.44://limiting error
clc;
clear;
lp=1.2;//limiting error in the measurement of power
ll=0.8;//limiting error in the measurement of current
lr=lp+2*ll;//limting error in meaurement of resistance 
disp(lr," peercentage limiting error in percentage is ±")
