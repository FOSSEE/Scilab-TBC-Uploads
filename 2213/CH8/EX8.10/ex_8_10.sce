//Example 8.10;linear synchronous velocity
clc;
clear;
close;
f=50;//hz
t=0.5;//in meter
s=0.25;//
vs=2*f*t*(3600/1000);//kmph
vc=vs*(1-s);//kmph
disp(vs,"linear synchronous velocity in kmph is")
disp(vc,"vehicle speed in kmph is")
