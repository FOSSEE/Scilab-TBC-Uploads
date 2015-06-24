//example 8.2//
clc
//clears the screen//
clear
//clears the command window//
s=4;
//s=stage of ripple counter//
d=50;
//delay of flip-flop in nano sec//
p=30;
//pulse width in nano secs//
f=1000/(s*d+p);
disp('maximum frequency (in MHz) is')
disp(f)