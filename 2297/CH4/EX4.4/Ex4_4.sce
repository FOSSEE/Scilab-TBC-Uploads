// Example 4.4;core losses
clc;
close;
clear;
format('v',6)
// given 
f=50;//frquency in Hz
hl=650;//hystresis loss
edl=400;//eddy current loss
A=hl/f;//parameter
B=edl/f^2;//parameter
Ph=A*2*f;//loss in watts
Pe=B*(2*f)^2;//loss in watts
pt=Ph+Pe;//total loss in watts
disp(pt,"total core losses is,(W)")
